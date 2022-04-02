.class Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$4;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->onRestoreInstanceState(Landroid/os/Parcelable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;)V
    .registers 2

    .line 782
    iput-object p1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$4;->this$0:Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 785
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$4;->this$0:Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;

    iget-object v1, v0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->adsItems:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->loadBanners(Ljava/util/List;Z)V

    return-void
.end method
