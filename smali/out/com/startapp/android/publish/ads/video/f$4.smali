.class Lcom/startapp/android/publish/ads/video/f$4;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/ads/video/f;->ai()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/ads/video/f;

.field private b:Z

.field private final c:I


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/ads/video/f;)V
    .registers 3

    .line 640
    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/f$4;->a:Lcom/startapp/android/publish/ads/video/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 642
    iget-object p1, p0, Lcom/startapp/android/publish/ads/video/f$4;->a:Lcom/startapp/android/publish/ads/video/f;

    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/b;->H()Lcom/startapp/android/publish/adsCommon/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/n;->d()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/startapp/android/publish/ads/video/f;->e(I)I

    move-result p1

    iput p1, p0, Lcom/startapp/android/publish/ads/video/f$4;->c:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 647
    :try_start_0
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f$4;->a:Lcom/startapp/android/publish/ads/video/f;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/f$4;->a:Lcom/startapp/android/publish/ads/video/f;

    iget-object v1, v1, Lcom/startapp/android/publish/ads/video/f;->i:Lcom/startapp/android/publish/ads/video/b/c;

    invoke-interface {v1}, Lcom/startapp/android/publish/ads/video/b/c;->d()I

    move-result v1

    add-int/lit8 v1, v1, 0x32

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/ads/video/f;->d(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_4c

    .line 648
    iget-boolean v3, p0, Lcom/startapp/android/publish/ads/video/f$4;->b:Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_97

    if-nez v3, :cond_4c

    const-string v3, "videoApi.setSkipTimer"

    if-eqz v0, :cond_3d

    .line 649
    :try_start_1c
    iget-object v4, p0, Lcom/startapp/android/publish/ads/video/f$4;->a:Lcom/startapp/android/publish/ads/video/f;

    iget v4, v4, Lcom/startapp/android/publish/ads/video/f;->n:I

    iget-object v5, p0, Lcom/startapp/android/publish/ads/video/f$4;->a:Lcom/startapp/android/publish/ads/video/f;

    .line 650
    invoke-virtual {v5}, Lcom/startapp/android/publish/ads/video/f;->U()Lcom/startapp/android/publish/ads/video/VideoAdDetails;

    move-result-object v5

    invoke-virtual {v5}, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->getSkippableAfter()I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    if-lt v4, v5, :cond_2f

    goto :goto_3d

    .line 654
    :cond_2f
    iget-object v4, p0, Lcom/startapp/android/publish/ads/video/f$4;->a:Lcom/startapp/android/publish/ads/video/f;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v4, v3, v5}, Lcom/startapp/android/publish/ads/video/f;->b(Lcom/startapp/android/publish/ads/video/f;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4c

    .line 651
    :cond_3d
    :goto_3d
    iput-boolean v2, p0, Lcom/startapp/android/publish/ads/video/f$4;->b:Z

    .line 652
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f$4;->a:Lcom/startapp/android/publish/ads/video/f;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/startapp/android/publish/ads/video/f;->a(Lcom/startapp/android/publish/ads/video/f;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 659
    :cond_4c
    :goto_4c
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f$4;->a:Lcom/startapp/android/publish/ads/video/f;

    iget-boolean v0, v0, Lcom/startapp/android/publish/ads/video/f;->v:Z

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f$4;->a:Lcom/startapp/android/publish/ads/video/f;

    iget-object v0, v0, Lcom/startapp/android/publish/ads/video/f;->i:Lcom/startapp/android/publish/ads/video/b/c;

    invoke-interface {v0}, Lcom/startapp/android/publish/ads/video/b/c;->d()I

    move-result v0

    iget v3, p0, Lcom/startapp/android/publish/ads/video/f$4;->c:I

    if-lt v0, v3, :cond_63

    .line 660
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f$4;->a:Lcom/startapp/android/publish/ads/video/f;

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/video/f;->T()V

    .line 662
    :cond_63
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f$4;->a:Lcom/startapp/android/publish/ads/video/f;

    iget-object v0, v0, Lcom/startapp/android/publish/ads/video/f;->i:Lcom/startapp/android/publish/ads/video/b/c;

    invoke-interface {v0}, Lcom/startapp/android/publish/ads/video/b/c;->d()I

    move-result v0

    add-int/lit8 v0, v0, 0x32

    div-int/lit16 v0, v0, 0x3e8

    .line 663
    iget-object v3, p0, Lcom/startapp/android/publish/ads/video/f$4;->a:Lcom/startapp/android/publish/ads/video/f;

    const-string v4, "videoApi.setVideoCurrentPosition"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-static {v3, v4, v2}, Lcom/startapp/android/publish/ads/video/f;->c(Lcom/startapp/android/publish/ads/video/f;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 665
    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/f$4;->a:Lcom/startapp/android/publish/ads/video/f;

    iget-object v1, v1, Lcom/startapp/android/publish/ads/video/f;->i:Lcom/startapp/android/publish/ads/video/b/c;

    invoke-interface {v1}, Lcom/startapp/android/publish/ads/video/b/c;->e()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    if-ge v0, v1, :cond_97

    .line 666
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f$4;->a:Lcom/startapp/android/publish/ads/video/f;

    iget-object v0, v0, Lcom/startapp/android/publish/ads/video/f;->D:Landroid/os/Handler;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/f$4;->a:Lcom/startapp/android/publish/ads/video/f;

    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/video/f;->Q()J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_97} :catch_97

    :catch_97
    :cond_97
    return-void
.end method
