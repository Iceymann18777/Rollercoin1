.class Lcom/startapp/android/publish/ads/a/c$6;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/ads/a/c;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/ads/a/c;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/ads/a/c;)V
    .registers 2

    .line 365
    iput-object p1, p0, Lcom/startapp/android/publish/ads/a/c$6;->a:Lcom/startapp/android/publish/ads/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 368
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/c$6;->a:Lcom/startapp/android/publish/ads/a/c;

    iget-object v0, v0, Lcom/startapp/android/publish/ads/a/c;->d:Landroid/webkit/WebView;

    if-eqz v0, :cond_d

    .line 369
    iget-object v0, p0, Lcom/startapp/android/publish/ads/a/c$6;->a:Lcom/startapp/android/publish/ads/a/c;

    iget-object v0, v0, Lcom/startapp/android/publish/ads/a/c;->d:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/startapp/common/a/c;->b(Landroid/webkit/WebView;)V

    :cond_d
    return-void
.end method
