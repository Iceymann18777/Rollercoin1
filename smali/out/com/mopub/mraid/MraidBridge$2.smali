.class Lcom/mopub/mraid/MraidBridge$2;
.super Ljava/lang/Object;
.source "MraidBridge.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mraid/MraidBridge;->attachView(Lcom/mopub/mraid/MraidBridge$MraidWebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mraid/MraidBridge;


# direct methods
.method constructor <init>(Lcom/mopub/mraid/MraidBridge;)V
    .registers 2

    .line 159
    iput-object p1, p0, Lcom/mopub/mraid/MraidBridge$2;->this$0:Lcom/mopub/mraid/MraidBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    .line 162
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge$2;->this$0:Lcom/mopub/mraid/MraidBridge;

    invoke-static {v0}, Lcom/mopub/mraid/MraidBridge;->access$100(Lcom/mopub/mraid/MraidBridge;)Lcom/mopub/mobileads/ViewGestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mopub/mobileads/ViewGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 164
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-eqz p2, :cond_13

    const/4 v0, 0x1

    if-eq p2, v0, :cond_13

    goto :goto_1c

    .line 167
    :cond_13
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-nez p2, :cond_1c

    .line 168
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    return p1
.end method
