.class public final Lcom/tappx/a/g6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tappx/a/m5;",
            ">;"
        }
    .end annotation
.end field

.field private final c:I

.field private final d:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/tappx/a/m5;",
            ">;)V"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/tappx/a/g6;-><init>(ILjava/util/List;ILjava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/List;ILjava/io/InputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/tappx/a/m5;",
            ">;I",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/tappx/a/g6;->a:I

    .line 4
    iput-object p2, p0, Lcom/tappx/a/g6;->b:Ljava/util/List;

    .line 5
    iput p3, p0, Lcom/tappx/a/g6;->c:I

    .line 6
    iput-object p4, p0, Lcom/tappx/a/g6;->d:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public final a()Ljava/io/InputStream;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/g6;->d:Ljava/io/InputStream;

    return-object v0
.end method

.method public final b()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/tappx/a/g6;->c:I

    return v0
.end method

.method public final c()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tappx/a/m5;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tappx/a/g6;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final d()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/tappx/a/g6;->a:I

    return v0
.end method
