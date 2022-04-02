.class Lcom/startapp/android/publish/ads/video/f$6;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/ads/video/f;->an()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/startapp/android/publish/ads/video/f;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/ads/video/f;I)V
    .registers 3

    .line 793
    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/f$6;->b:Lcom/startapp/android/publish/ads/video/f;

    iput p2, p0, Lcom/startapp/android/publish/ads/video/f$6;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 797
    :try_start_0
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f$6;->b:Lcom/startapp/android/publish/ads/video/f;

    iget v1, p0, Lcom/startapp/android/publish/ads/video/f$6;->a:I

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/ads/video/f;->f(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_29

    :catch_8
    move-exception v0

    .line 799
    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/f$6;->b:Lcom/startapp/android/publish/ads/video/f;

    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/video/f;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/startapp/android/publish/adsCommon/f/e;

    sget-object v3, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    .line 800
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v4, "VideoMode.scheduleFractionProgressEvents"

    invoke-direct {v2, v3, v4, v0}, Lcom/startapp/android/publish/adsCommon/f/e;-><init>(Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f$6;->b:Lcom/startapp/android/publish/ads/video/f;

    invoke-static {v0}, Lcom/startapp/android/publish/ads/video/f;->b(Lcom/startapp/android/publish/ads/video/f;)Ljava/lang/String;

    move-result-object v0

    .line 799
    invoke-static {v1, v2, v0}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/e;Ljava/lang/String;)V

    :goto_29
    return-void
.end method
