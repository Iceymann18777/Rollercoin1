.class final Lcom/startapp/android/publish/adsCommon/l$1;
.super Landroid/content/BroadcastReceiver;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/adsCommon/l;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 86
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 89
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/l;->b()V

    .line 90
    invoke-static {p1}, Lcom/startapp/android/publish/adsCommon/l;->c(Landroid/content/Context;)V

    return-void
.end method
