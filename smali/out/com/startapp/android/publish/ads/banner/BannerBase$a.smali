.class Lcom/startapp/android/publish/ads/banner/BannerBase$a;
.super Ljava/util/TimerTask;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/ads/banner/BannerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/ads/banner/BannerBase;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/ads/banner/BannerBase;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/startapp/android/publish/ads/banner/BannerBase$a;->a:Lcom/startapp/android/publish/ads/banner/BannerBase;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 60
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/BannerBase$a;->a:Lcom/startapp/android/publish/ads/banner/BannerBase;

    new-instance v1, Lcom/startapp/android/publish/ads/banner/BannerBase$a$1;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/ads/banner/BannerBase$a$1;-><init>(Lcom/startapp/android/publish/ads/banner/BannerBase$a;)V

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/ads/banner/BannerBase;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
