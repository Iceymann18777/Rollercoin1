.class Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$2;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->initRuntime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;)V
    .registers 2

    .line 231
    iput-object p1, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$2;->this$0:Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method
