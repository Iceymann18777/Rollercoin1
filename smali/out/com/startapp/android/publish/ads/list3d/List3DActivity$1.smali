.class Lcom/startapp/android/publish/ads/list3d/List3DActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/ads/list3d/List3DActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/ads/list3d/List3DActivity;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/ads/list3d/List3DActivity;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/startapp/android/publish/ads/list3d/List3DActivity$1;->a:Lcom/startapp/android/publish/ads/list3d/List3DActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 78
    iget-object p1, p0, Lcom/startapp/android/publish/ads/list3d/List3DActivity$1;->a:Lcom/startapp/android/publish/ads/list3d/List3DActivity;

    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/list3d/List3DActivity;->finish()V

    return-void
.end method
