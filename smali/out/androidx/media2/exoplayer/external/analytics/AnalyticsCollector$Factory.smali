.class public Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$Factory;
.super Ljava/lang/Object;
.source "AnalyticsCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAnalyticsCollector(Landroidx/media2/exoplayer/external/Player;Landroidx/media2/exoplayer/external/util/Clock;)Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "player",
            "clock"
        }
    .end annotation

    .line 89
    new-instance v0, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;

    invoke-direct {v0, p1, p2}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector;-><init>(Landroidx/media2/exoplayer/external/Player;Landroidx/media2/exoplayer/external/util/Clock;)V

    return-object v0
.end method
