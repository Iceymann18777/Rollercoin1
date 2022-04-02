.class public Lcom/moat/analytics/mobile/mpub/v$a;
.super Lcom/moat/analytics/mobile/mpub/MoatAnalytics;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/mpub/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/MoatAnalytics;-><init>()V

    return-void
.end method


# virtual methods
.method public prepareNativeDisplayTracking(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public start(Landroid/app/Application;)V
    .registers 2

    return-void
.end method

.method public start(Lcom/moat/analytics/mobile/mpub/MoatOptions;Landroid/app/Application;)V
    .registers 3

    return-void
.end method
