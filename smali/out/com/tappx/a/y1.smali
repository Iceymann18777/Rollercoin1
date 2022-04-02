.class public Lcom/tappx/a/y1;
.super Lcom/tappx/a/u1;
.source "SourceFile"


# instance fields
.field private final h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z

.field private m:I

.field private n:Z

.field private o:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/tappx/a/u1;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tappx/a/y1;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/tappx/a/y1;->l:Z

    return-void
.end method

.method public b(I)V
    .registers 2

    .line 2
    iput p1, p0, Lcom/tappx/a/y1;->m:I

    return-void
.end method

.method public b(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/tappx/a/y1;->k:Z

    return-void
.end method

.method public c(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/tappx/a/y1;->j:I

    return-void
.end method

.method public c(Z)V
    .registers 2

    .line 2
    iput-boolean p1, p0, Lcom/tappx/a/y1;->n:Z

    return-void
.end method

.method public d(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/tappx/a/y1;->o:I

    return-void
.end method

.method public e(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/tappx/a/y1;->i:I

    return-void
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/y1;->h:Ljava/lang/String;

    return-object v0
.end method

.method public i()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/tappx/a/y1;->m:I

    return v0
.end method

.method public j()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/tappx/a/y1;->j:I

    return v0
.end method

.method public k()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/tappx/a/y1;->o:I

    return v0
.end method

.method public l()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/tappx/a/y1;->i:I

    return v0
.end method

.method public m()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/tappx/a/y1;->l:Z

    return v0
.end method

.method public n()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/tappx/a/y1;->k:Z

    return v0
.end method

.method public o()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/tappx/a/y1;->n:Z

    return v0
.end method
