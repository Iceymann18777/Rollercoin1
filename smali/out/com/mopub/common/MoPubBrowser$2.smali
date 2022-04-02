.class Lcom/mopub/common/MoPubBrowser$2;
.super Ljava/lang/Object;
.source "MoPubBrowser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/common/MoPubBrowser;->initializeButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/common/MoPubBrowser;


# direct methods
.method constructor <init>(Lcom/mopub/common/MoPubBrowser;)V
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/mopub/common/MoPubBrowser$2;->this$0:Lcom/mopub/common/MoPubBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 133
    iget-object p1, p0, Lcom/mopub/common/MoPubBrowser$2;->this$0:Lcom/mopub/common/MoPubBrowser;

    invoke-static {p1}, Lcom/mopub/common/MoPubBrowser;->access$000(Lcom/mopub/common/MoPubBrowser;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 134
    iget-object p1, p0, Lcom/mopub/common/MoPubBrowser$2;->this$0:Lcom/mopub/common/MoPubBrowser;

    invoke-static {p1}, Lcom/mopub/common/MoPubBrowser;->access$000(Lcom/mopub/common/MoPubBrowser;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->goForward()V

    :cond_15
    return-void
.end method
