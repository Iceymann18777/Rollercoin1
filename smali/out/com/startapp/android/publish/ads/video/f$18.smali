.class Lcom/startapp/android/publish/ads/video/f$18;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/common/a/c$a;


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

    .line 370
    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/f$18;->a:Lcom/startapp/android/publish/ads/video/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 375
    iget-object p1, p0, Lcom/startapp/android/publish/ads/video/f$18;->a:Lcom/startapp/android/publish/ads/video/f;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/startapp/android/publish/ads/video/f;->q:Z

    .line 376
    iget-object p1, p0, Lcom/startapp/android/publish/ads/video/f$18;->a:Lcom/startapp/android/publish/ads/video/f;

    iget-boolean p1, p1, Lcom/startapp/android/publish/ads/video/f;->p:Z

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/startapp/android/publish/ads/video/f$18;->a:Lcom/startapp/android/publish/ads/video/f;

    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/video/f;->X()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 377
    iget-object p1, p0, Lcom/startapp/android/publish/ads/video/f$18;->a:Lcom/startapp/android/publish/ads/video/f;

    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/video/f;->G()V

    :cond_18
    return-void
.end method
