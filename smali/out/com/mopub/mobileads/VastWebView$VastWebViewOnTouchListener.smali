.class Lcom/mopub/mobileads/VastWebView$VastWebViewOnTouchListener;
.super Ljava/lang/Object;
.source "VastWebView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/VastWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VastWebViewOnTouchListener"
.end annotation


# instance fields
.field private mClickStarted:Z

.field final synthetic this$0:Lcom/mopub/mobileads/VastWebView;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/VastWebView;)V
    .registers 2

    .line 100
    iput-object p1, p0, Lcom/mopub/mobileads/VastWebView$VastWebViewOnTouchListener;->this$0:Lcom/mopub/mobileads/VastWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    .line 105
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_20

    if-eq p1, p2, :cond_b

    goto :goto_22

    .line 110
    :cond_b
    iget-boolean p1, p0, Lcom/mopub/mobileads/VastWebView$VastWebViewOnTouchListener;->mClickStarted:Z

    if-nez p1, :cond_10

    return v0

    .line 113
    :cond_10
    iput-boolean v0, p0, Lcom/mopub/mobileads/VastWebView$VastWebViewOnTouchListener;->mClickStarted:Z

    .line 114
    iget-object p1, p0, Lcom/mopub/mobileads/VastWebView$VastWebViewOnTouchListener;->this$0:Lcom/mopub/mobileads/VastWebView;

    iget-object p1, p1, Lcom/mopub/mobileads/VastWebView;->mVastWebViewClickListener:Lcom/mopub/mobileads/VastWebView$VastWebViewClickListener;

    if-eqz p1, :cond_22

    .line 115
    iget-object p1, p0, Lcom/mopub/mobileads/VastWebView$VastWebViewOnTouchListener;->this$0:Lcom/mopub/mobileads/VastWebView;

    iget-object p1, p1, Lcom/mopub/mobileads/VastWebView;->mVastWebViewClickListener:Lcom/mopub/mobileads/VastWebView$VastWebViewClickListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/VastWebView$VastWebViewClickListener;->onVastWebViewClick()V

    goto :goto_22

    .line 107
    :cond_20
    iput-boolean p2, p0, Lcom/mopub/mobileads/VastWebView$VastWebViewOnTouchListener;->mClickStarted:Z

    :cond_22
    :goto_22
    return v0
.end method
