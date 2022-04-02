.class Lcom/startapp/android/publish/ads/list3d/c$3;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/ads/list3d/c;->a(FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/ads/list3d/c;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/ads/list3d/c;)V
    .registers 2

    .line 620
    iput-object p1, p0, Lcom/startapp/android/publish/ads/list3d/c$3;->a:Lcom/startapp/android/publish/ads/list3d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 623
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/c$3;->a:Lcom/startapp/android/publish/ads/list3d/c;

    iget-object v0, v0, Lcom/startapp/android/publish/ads/list3d/c;->j:Lcom/startapp/android/publish/ads/list3d/Dynamics;

    if-nez v0, :cond_7

    return-void

    .line 629
    :cond_7
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/c$3;->a:Lcom/startapp/android/publish/ads/list3d/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/ads/list3d/c;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 632
    iget-object v1, p0, Lcom/startapp/android/publish/ads/list3d/c$3;->a:Lcom/startapp/android/publish/ads/list3d/c;

    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/ads/list3d/c;->a(Landroid/view/View;)I

    move-result v0

    iget-object v2, p0, Lcom/startapp/android/publish/ads/list3d/c$3;->a:Lcom/startapp/android/publish/ads/list3d/c;

    iget v2, v2, Lcom/startapp/android/publish/ads/list3d/c;->f:I

    sub-int/2addr v0, v2

    iput v0, v1, Lcom/startapp/android/publish/ads/list3d/c;->d:I

    .line 633
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/c$3;->a:Lcom/startapp/android/publish/ads/list3d/c;

    iget-object v0, v0, Lcom/startapp/android/publish/ads/list3d/c;->j:Lcom/startapp/android/publish/ads/list3d/Dynamics;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/startapp/android/publish/ads/list3d/Dynamics;->a(J)V

    .line 634
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/c$3;->a:Lcom/startapp/android/publish/ads/list3d/c;

    iget-object v1, v0, Lcom/startapp/android/publish/ads/list3d/c;->j:Lcom/startapp/android/publish/ads/list3d/Dynamics;

    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/list3d/Dynamics;->a()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/startapp/android/publish/ads/list3d/c$3;->a:Lcom/startapp/android/publish/ads/list3d/c;

    iget v2, v2, Lcom/startapp/android/publish/ads/list3d/c;->d:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/ads/list3d/c;->a(I)V

    .line 637
    :cond_39
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/c$3;->a:Lcom/startapp/android/publish/ads/list3d/c;

    iget-object v0, v0, Lcom/startapp/android/publish/ads/list3d/c;->j:Lcom/startapp/android/publish/ads/list3d/Dynamics;

    const/high16 v1, 0x3f000000    # 0.5f

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1, v2}, Lcom/startapp/android/publish/ads/list3d/Dynamics;->a(FF)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 639
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/c$3;->a:Lcom/startapp/android/publish/ads/list3d/c;

    const-wide/16 v1, 0x10

    invoke-virtual {v0, p0, v1, v2}, Lcom/startapp/android/publish/ads/list3d/c;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4f
    return-void
.end method
