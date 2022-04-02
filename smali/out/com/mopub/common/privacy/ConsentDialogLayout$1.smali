.class Lcom/mopub/common/privacy/ConsentDialogLayout$1;
.super Ljava/lang/Object;
.source "ConsentDialogLayout.java"

# interfaces
.implements Lcom/mopub/common/CloseableLayout$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/common/privacy/ConsentDialogLayout;->setupEventsListeners(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/common/privacy/ConsentDialogLayout;


# direct methods
.method constructor <init>(Lcom/mopub/common/privacy/ConsentDialogLayout;)V
    .registers 2

    .line 120
    iput-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogLayout$1;->this$0:Lcom/mopub/common/privacy/ConsentDialogLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/mopub/common/privacy/ConsentDialogLayout$1;->this$0:Lcom/mopub/common/privacy/ConsentDialogLayout;

    invoke-static {v0}, Lcom/mopub/common/privacy/ConsentDialogLayout;->access$000(Lcom/mopub/common/privacy/ConsentDialogLayout;)Lcom/mopub/common/privacy/ConsentDialogLayout$ConsentListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 124
    iget-object v0, p0, Lcom/mopub/common/privacy/ConsentDialogLayout$1;->this$0:Lcom/mopub/common/privacy/ConsentDialogLayout;

    invoke-static {v0}, Lcom/mopub/common/privacy/ConsentDialogLayout;->access$000(Lcom/mopub/common/privacy/ConsentDialogLayout;)Lcom/mopub/common/privacy/ConsentDialogLayout$ConsentListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/common/privacy/ConsentDialogLayout$ConsentListener;->onCloseClick()V

    :cond_11
    return-void
.end method
