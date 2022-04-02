.class public Lcom/tappx/a/z1;
.super Lcom/tappx/a/u1;
.source "SourceFile"


# instance fields
.field private h:Ljava/lang/String;

.field private i:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tappx/a/u1;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/tappx/a/z1;->i:I

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tappx/a/z1;->h:Ljava/lang/String;

    return-void
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/z1;->h:Ljava/lang/String;

    return-object v0
.end method

.method public i()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/tappx/a/z1;->i:I

    return v0
.end method
