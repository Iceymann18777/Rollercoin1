.class public Lcom/integralads/avid/library/mopub/utils/AvidTimestamp;
.super Ljava/lang/Object;
.source "AvidTimestamp.java"


# static fields
.field private static NANOSEC_PER_MILLISEC:D = 1000000.0


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentTime()D
    .registers 4

    .line 9
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-double v0, v0

    sget-wide v2, Lcom/integralads/avid/library/mopub/utils/AvidTimestamp;->NANOSEC_PER_MILLISEC:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0
.end method
