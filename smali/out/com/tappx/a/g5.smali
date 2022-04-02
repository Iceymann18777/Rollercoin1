.class public Lcom/tappx/a/g5;
.super Lcom/tappx/a/z5;
.source "SourceFile"


# instance fields
.field private b:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/tappx/a/q5;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/tappx/a/z5;-><init>(Lcom/tappx/a/q5;)V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/g5;->b:Landroid/content/Intent;

    if-eqz v0, :cond_7

    const-string v0, "User needs to (re)enter credentials."

    return-object v0

    .line 4
    :cond_7
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
