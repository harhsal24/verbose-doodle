using System;
using System.Collections.Generic;
using System.Linq;

public class SLAData
{
    public int ProductId { get; set; }
    public string SpecifiedType { get; set; }
    public string State { get; set; }
    public string PriceType { get; set; }
    public string FromDate { get; set; }
    public string ToDate { get; set; }
    public int OnTimeOrders { get; set; }
    public int TotalOrders { get; set; }

    public SLAData(int productId, string specifiedType, string state, string priceType, string fromDate, string toDate, int onTimeOrders, int totalOrders)
    {
        ProductId = productId;
        SpecifiedType = specifiedType;
        State = state;
        PriceType = priceType;
        FromDate = fromDate;
        ToDate = toDate;
        OnTimeOrders = onTimeOrders;
        TotalOrders = totalOrders;
    }
}

public class Program
{
    public static void Main()
    {
        var slaDataList = new List<SLAData>
        {
            new SLAData(1, "TypeA", "NY", "Standard", "2024-01-01T00:00:00-05:00", "2024-12-31T23:59:59-05:00", 50, 100),
            new SLAData(2, "TypeB", "CA", "Premium", "2024-02-01T00:00:00-08:00", "2024-11-30T23:59:59-08:00", 40, 80),
            new SLAData(3, "TypeC", "TX", "Standard", "2024-03-01T00:00:00-06:00", "2024-10-31T23:59:59-06:00", 30, 60),
            new SLAData(4, "TypeA", "NY", "Standard", "2024-06-01T00:00:00-05:00", "2024-06-30T23:59:59-05:00", 20, 40),
            new SLAData(5, "TypeA", "NY", "Standard", "2024-06-01T00:00:00-05:00", "2024-06-30T23:59:59-05:00", 25, 50),
            new SLAData(6, "TypeA", "NY", "Standard", "2024-05-01T00:00:00-05:00", "2024-05-31T23:59:59-05:00", 35, 70),
        };
        
        string specifiedType = "TypeA";
        string state = "NY";
        string priceType = "Standard";

        var now = DateTimeOffset.Now;

        var result = new List<SLAData>();

        var last3MonthsOrders = GetOrdersForLastMonths(slaDataList, specifiedType, state, priceType, now, 3);
        var previousMonthOrders = GetOrdersForLastMonths(last3MonthsOrders, specifiedType, state, priceType, now, 1);

        if (previousMonthOrders.Sum(o => o.TotalOrders) < 4)
        {
            if (last3MonthsOrders.Sum(o => o.TotalOrders) < 4)
            {
                var last3MonthsOrdersWithoutState = GetOrdersForLastMonths(slaDataList, specifiedType, null, priceType, now, 3);
                if (last3MonthsOrdersWithoutState.Sum(o => o.TotalOrders) < 4)
                {
                    var last3MonthsOrdersByPriceType = GetOrdersForLastMonths(slaDataList, specifiedType, null, null, now, 3);
                    if (last3MonthsOrdersByPriceType.Sum(o => o.TotalOrders) < 4)
                    {
                        Console.WriteLine("Less than 4 orders found with all filters relaxed.");
                    }
                    else
                    {
                        result.AddRange(last3MonthsOrdersByPriceType);
                    }
                }
                else
                {
                    result.AddRange(last3MonthsOrdersWithoutState);
                }
            }
            else
            {
                result.AddRange(last3MonthsOrders);
            }
        }
        else
        {
            result.AddRange(previousMonthOrders);
        }

        PrintOrders(result);
    }

    private static List<SLAData> GetOrdersForLastMonths(List<SLAData> slaDataList, string specifiedType, string state, string priceType, DateTimeOffset currentDate, int months)
    {
        var startDate = currentDate.AddMonths(-months);
        return FilterOrders(slaDataList, specifiedType, state, priceType, startDate, currentDate);
    }

    private static List<SLAData> FilterOrders(List<SLAData> slaDataList, string specifiedType, string state, string priceType, DateTimeOffset startDate, DateTimeOffset endDate)
    {
        return slaDataList
            .Where(sla =>
                sla.SpecifiedType == specifiedType &&
                (state == null || sla.State == state) &&
                (priceType == null || sla.PriceType == priceType) &&
                DateTimeOffset.Parse(sla.FromDate) >= startDate &&
                DateTimeOffset.Parse(sla.FromDate) <= endDate)
            .ToList();
    }

    private static void PrintOrders(List<SLAData> orders)
    {
        foreach (var order in orders)
        {
            Console.WriteLine($"ProductId: {order.ProductId}, SpecifiedType: {order.SpecifiedType}, State: {order.State}, PriceType: {order.PriceType}, FromDate: {order.FromDate}, ToDate: {order.ToDate}, OnTimeOrders: {order.OnTimeOrders}, TotalOrders: {order.TotalOrders}");
        }
    }
}
