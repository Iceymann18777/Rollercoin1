.class Lcom/mopub/common/privacy/ConsentDialogResponse;
.super Ljava/lang/Object;
.source "ConsentDialogResponse.java"


# instance fields
.field private final mHtml:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 18
    iput-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogResponse;->mHtml:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getHtml()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/mopub/common/privacy/ConsentDialogResponse;->mHtml:Ljava/lang/String;

    return-object v0
.end method
