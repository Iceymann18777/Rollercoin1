.class Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$2;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->initRuntime()V
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

    .line 285
    iput-object p1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$2;->this$0:Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 288
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$2;->this$0:Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;

    iget-boolean v0, v0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->defaultLoad:Z

    if-eqz v0, :cond_12

    .line 289
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$2;->this$0:Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;

    iget-object v1, v0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->adPreferences:Lcom/startapp/android/publish/common/model/AdPreferences;

    invoke-static {v0, v1}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->access$300(Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;Lcom/startapp/android/publish/common/model/AdPreferences;)V

    .line 290
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$2;->this$0:Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;

    invoke-static {v0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;->access$400(Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;)V

    :cond_12
    return-void
.end method
