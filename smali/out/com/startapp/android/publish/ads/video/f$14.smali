.class Lcom/startapp/android/publish/ads/video/f$14;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/android/publish/ads/video/b/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/ads/video/f;->aa()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/ads/video/f;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/ads/video/f;)V
    .registers 2

    .line 305
    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/f$14;->a:Lcom/startapp/android/publish/ads/video/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 5

    .line 309
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f$14;->a:Lcom/startapp/android/publish/ads/video/f;

    iget-boolean v0, v0, Lcom/startapp/android/publish/ads/video/f;->v:Z

    if-eqz v0, :cond_aa

    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f$14;->a:Lcom/startapp/android/publish/ads/video/f;

    iget-boolean v0, v0, Lcom/startapp/android/publish/ads/video/f;->w:Z

    if-eqz v0, :cond_aa

    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f$14;->a:Lcom/startapp/android/publish/ads/video/f;

    iget-object v0, v0, Lcom/startapp/android/publish/ads/video/f;->i:Lcom/startapp/android/publish/ads/video/b/c;

    if-eqz v0, :cond_aa

    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f$14;->a:Lcom/startapp/android/publish/ads/video/f;

    iget-object v0, v0, Lcom/startapp/android/publish/ads/video/f;->i:Lcom/startapp/android/publish/ads/video/b/c;

    invoke-interface {v0}, Lcom/startapp/android/publish/ads/video/b/c;->e()I

    move-result v0

    if-eqz v0, :cond_aa

    const/4 v0, 0x3

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buffered percent = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoMode"

    invoke-static {v2, v0, v1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f$14;->a:Lcom/startapp/android/publish/ads/video/f;

    iput p1, v0, Lcom/startapp/android/publish/ads/video/f;->u:I

    .line 312
    iget-object p1, p0, Lcom/startapp/android/publish/ads/video/f$14;->a:Lcom/startapp/android/publish/ads/video/f;

    iget-object p1, p1, Lcom/startapp/android/publish/ads/video/f;->i:Lcom/startapp/android/publish/ads/video/b/c;

    invoke-interface {p1}, Lcom/startapp/android/publish/ads/video/b/c;->d()I

    move-result p1

    const/16 v0, 0x64

    mul-int/lit8 p1, p1, 0x64

    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/f$14;->a:Lcom/startapp/android/publish/ads/video/f;

    iget-object v1, v1, Lcom/startapp/android/publish/ads/video/f;->i:Lcom/startapp/android/publish/ads/video/b/c;

    invoke-interface {v1}, Lcom/startapp/android/publish/ads/video/b/c;->e()I

    move-result v1

    div-int/2addr p1, v1

    .line 313
    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/f$14;->a:Lcom/startapp/android/publish/ads/video/f;

    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/video/f;->N()Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 314
    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/f$14;->a:Lcom/startapp/android/publish/ads/video/f;

    iget-boolean v1, v1, Lcom/startapp/android/publish/ads/video/f;->x:Z

    if-nez v1, :cond_6d

    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/f$14;->a:Lcom/startapp/android/publish/ads/video/f;

    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/video/f;->Y()Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 315
    iget-object p1, p0, Lcom/startapp/android/publish/ads/video/f$14;->a:Lcom/startapp/android/publish/ads/video/f;

    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/video/f;->K()V

    goto :goto_aa

    .line 318
    :cond_6d
    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/f$14;->a:Lcom/startapp/android/publish/ads/video/f;

    iget v1, v1, Lcom/startapp/android/publish/ads/video/f;->u:I

    if-eq v1, v0, :cond_86

    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f$14;->a:Lcom/startapp/android/publish/ads/video/f;

    iget v0, v0, Lcom/startapp/android/publish/ads/video/f;->u:I

    sub-int/2addr v0, p1

    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapp/android/publish/adsCommon/b;->H()Lcom/startapp/android/publish/adsCommon/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapp/android/publish/adsCommon/n;->j()I

    move-result p1

    if-le v0, p1, :cond_aa

    .line 319
    :cond_86
    iget-object p1, p0, Lcom/startapp/android/publish/ads/video/f$14;->a:Lcom/startapp/android/publish/ads/video/f;

    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/video/f;->I()V

    goto :goto_aa

    .line 323
    :cond_8c
    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/f$14;->a:Lcom/startapp/android/publish/ads/video/f;

    iget v1, v1, Lcom/startapp/android/publish/ads/video/f;->u:I

    if-ge v1, v0, :cond_aa

    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/f$14;->a:Lcom/startapp/android/publish/ads/video/f;

    iget v0, v0, Lcom/startapp/android/publish/ads/video/f;->u:I

    sub-int/2addr v0, p1

    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapp/android/publish/adsCommon/b;->H()Lcom/startapp/android/publish/adsCommon/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapp/android/publish/adsCommon/n;->k()I

    move-result p1

    if-gt v0, p1, :cond_aa

    .line 324
    iget-object p1, p0, Lcom/startapp/android/publish/ads/video/f$14;->a:Lcom/startapp/android/publish/ads/video/f;

    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/video/f;->J()V

    :cond_aa
    :goto_aa
    return-void
.end method
