.class Lcom/mopub/nativeads/NativeClickHandler$2;
.super Ljava/lang/Object;
.source "NativeClickHandler.java"

# interfaces
.implements Lcom/mopub/common/UrlHandler$ResultActions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/NativeClickHandler;->openClickDestinationUrl(Ljava/lang/String;Landroid/view/View;Lcom/mopub/nativeads/SpinningProgressView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/nativeads/NativeClickHandler;

.field final synthetic val$spinningProgressView:Lcom/mopub/nativeads/SpinningProgressView;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/NativeClickHandler;Landroid/view/View;Lcom/mopub/nativeads/SpinningProgressView;)V
    .registers 4

    .line 142
    iput-object p1, p0, Lcom/mopub/nativeads/NativeClickHandler$2;->this$0:Lcom/mopub/nativeads/NativeClickHandler;

    iput-object p2, p0, Lcom/mopub/nativeads/NativeClickHandler$2;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/mopub/nativeads/NativeClickHandler$2;->val$spinningProgressView:Lcom/mopub/nativeads/SpinningProgressView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private removeSpinningProgressView()V
    .registers 2

    .line 158
    iget-object v0, p0, Lcom/mopub/nativeads/NativeClickHandler$2;->val$view:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 159
    iget-object v0, p0, Lcom/mopub/nativeads/NativeClickHandler$2;->val$spinningProgressView:Lcom/mopub/nativeads/SpinningProgressView;

    invoke-virtual {v0}, Lcom/mopub/nativeads/SpinningProgressView;->removeFromRoot()Z

    :cond_9
    return-void
.end method


# virtual methods
.method public urlHandlingFailed(Ljava/lang/String;Lcom/mopub/common/UrlAction;)V
    .registers 3

    .line 153
    invoke-direct {p0}, Lcom/mopub/nativeads/NativeClickHandler$2;->removeSpinningProgressView()V

    .line 154
    iget-object p1, p0, Lcom/mopub/nativeads/NativeClickHandler$2;->this$0:Lcom/mopub/nativeads/NativeClickHandler;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/mopub/nativeads/NativeClickHandler;->access$002(Lcom/mopub/nativeads/NativeClickHandler;Z)Z

    return-void
.end method

.method public urlHandlingSucceeded(Ljava/lang/String;Lcom/mopub/common/UrlAction;)V
    .registers 3

    .line 146
    invoke-direct {p0}, Lcom/mopub/nativeads/NativeClickHandler$2;->removeSpinningProgressView()V

    .line 147
    iget-object p1, p0, Lcom/mopub/nativeads/NativeClickHandler$2;->this$0:Lcom/mopub/nativeads/NativeClickHandler;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/mopub/nativeads/NativeClickHandler;->access$002(Lcom/mopub/nativeads/NativeClickHandler;Z)Z

    return-void
.end method
