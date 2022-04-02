.class Lcom/startapp/android/publish/ads/list3d/c$4;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/ads/list3d/c;->g()V
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

    .line 719
    iput-object p1, p0, Lcom/startapp/android/publish/ads/list3d/c$4;->a:Lcom/startapp/android/publish/ads/list3d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 721
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/c$4;->a:Lcom/startapp/android/publish/ads/list3d/c;

    iget v0, v0, Lcom/startapp/android/publish/ads/list3d/c;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    .line 722
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/c$4;->a:Lcom/startapp/android/publish/ads/list3d/c;

    iget v1, v0, Lcom/startapp/android/publish/ads/list3d/c;->b:I

    iget-object v2, p0, Lcom/startapp/android/publish/ads/list3d/c$4;->a:Lcom/startapp/android/publish/ads/list3d/c;

    iget v2, v2, Lcom/startapp/android/publish/ads/list3d/c;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/startapp/android/publish/ads/list3d/c;->a(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1b

    .line 724
    iget-object v1, p0, Lcom/startapp/android/publish/ads/list3d/c$4;->a:Lcom/startapp/android/publish/ads/list3d/c;

    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/ads/list3d/c;->b(I)V

    :cond_1b
    return-void
.end method
