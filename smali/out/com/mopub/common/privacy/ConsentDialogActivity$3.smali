.class Lcom/mopub/common/privacy/ConsentDialogActivity$3;
.super Ljava/lang/Object;
.source "ConsentDialogActivity.java"

# interfaces
.implements Lcom/mopub/common/privacy/ConsentDialogLayout$PageLoadListener;


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

    .line 125
    iput-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogActivity$3;->this$0:Lcom/mopub/common/privacy/ConsentDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadProgress(I)V
    .registers 2

    .line 128
    sget p1, Lcom/mopub/common/privacy/ConsentDialogLayout;->FINISHED_LOADING:I

    return-void
.end method
