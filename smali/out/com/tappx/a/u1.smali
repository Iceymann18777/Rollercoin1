.class public abstract Lcom/tappx/a/u1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:Lcom/tappx/a/t1;

.field private g:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/tappx/a/u1;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/tappx/a/t1;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/tappx/a/u1;->f:Lcom/tappx/a/t1;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    .line 5
    iput p1, p0, Lcom/tappx/a/u1;->g:I

    return-void
.end method

.method public a(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/tappx/a/u1;->e:J

    return-void
.end method

.method public a(Lcom/tappx/a/t1;)V
    .registers 2

    .line 3
    iput-object p1, p0, Lcom/tappx/a/u1;->f:Lcom/tappx/a/t1;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 4
    iput-object p1, p0, Lcom/tappx/a/u1;->a:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/tappx/a/u1;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tappx/a/u1;->d:Ljava/lang/String;

    return-void
.end method

.method public c()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/tappx/a/u1;->e:J

    return-wide v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/tappx/a/u1;->b:Ljava/lang/String;

    return-void
.end method

.method public d()I
    .registers 2

    .line 2
    iget v0, p0, Lcom/tappx/a/u1;->g:I

    return v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tappx/a/u1;->c:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/u1;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/u1;->b:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/u1;->c:Ljava/lang/String;

    return-object v0
.end method
