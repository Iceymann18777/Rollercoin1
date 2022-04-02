.class Lcom/startapp/android/publish/ads/a/c$4;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/ads/a/c;->a(Landroid/webkit/WebView;)V
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

    .line 212
    iput-object p1, p0, Lcom/startapp/android/publish/ads/a/c$4;->a:Lcom/startapp/android/publish/ads/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    .line 214
    iget-object p1, p0, Lcom/startapp/android/publish/ads/a/c$4;->a:Lcom/startapp/android/publish/ads/a/c;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/startapp/android/publish/ads/a/c;->a(Lcom/startapp/android/publish/ads/a/c;Z)Z

    .line 215
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method
