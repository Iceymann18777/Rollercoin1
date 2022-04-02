.class Lcom/mopub/common/privacy/ConsentDialogActivity$1;
.super Ljava/lang/Object;
.source "ConsentDialogActivity.java"

# interfaces
.implements Lcom/mopub/common/privacy/ConsentDialogLayout$ConsentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/common/privacy/ConsentDialogActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/common/privacy/ConsentDialogActivity;


# direct methods
.method constructor <init>(Lcom/mopub/common/privacy/ConsentDialogActivity;)V
    .registers 2

    .line 103
    iput-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogActivity$1;->this$0:Lcom/mopub/common/privacy/ConsentDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseClick()V
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/mopub/common/privacy/ConsentDialogActivity$1;->this$0:Lcom/mopub/common/privacy/ConsentDialogActivity;

    invoke-virtual {v0}, Lcom/mopub/common/privacy/ConsentDialogActivity;->finish()V

    return-void
.end method

.method public onConsentClick(Lcom/mopub/common/privacy/ConsentStatus;)V
    .registers 3

    .line 106
    iget-object v0, p0, Lcom/mopub/common/privacy/ConsentDialogActivity$1;->this$0:Lcom/mopub/common/privacy/ConsentDialogActivity;

    invoke-static {v0, p1}, Lcom/mopub/common/privacy/ConsentDialogActivity;->access$000(Lcom/mopub/common/privacy/ConsentDialogActivity;Lcom/mopub/common/privacy/ConsentStatus;)V

    .line 107
    iget-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogActivity$1;->this$0:Lcom/mopub/common/privacy/ConsentDialogActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mopub/common/privacy/ConsentDialogActivity;->setCloseButtonVisibility(Z)V

    return-void
.end method
