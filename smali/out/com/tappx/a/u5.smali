.class public Lcom/tappx/a/u5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/u5$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final b:Lcom/tappx/a/h5$a;

.field public final c:Lcom/tappx/a/z5;

.field public d:Z


# direct methods
.method private constructor <init>(Lcom/tappx/a/z5;)V
    .registers 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/tappx/a/u5;->d:Z

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/tappx/a/u5;->a:Ljava/lang/Object;

    .line 29
    iput-object v0, p0, Lcom/tappx/a/u5;->b:Lcom/tappx/a/h5$a;

    .line 30
    iput-object p1, p0, Lcom/tappx/a/u5;->c:Lcom/tappx/a/z5;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/tappx/a/h5$a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/tappx/a/h5$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/tappx/a/u5;->d:Z

    .line 10
    iput-object p1, p0, Lcom/tappx/a/u5;->a:Ljava/lang/Object;

    .line 11
    iput-object p2, p0, Lcom/tappx/a/u5;->b:Lcom/tappx/a/h5$a;

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/tappx/a/u5;->c:Lcom/tappx/a/z5;

    return-void
.end method

.method public static a(Lcom/tappx/a/z5;)Lcom/tappx/a/u5;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tappx/a/z5;",
            ")",
            "Lcom/tappx/a/u5<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/tappx/a/u5;

    invoke-direct {v0, p0}, Lcom/tappx/a/u5;-><init>(Lcom/tappx/a/z5;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Lcom/tappx/a/h5$a;)Lcom/tappx/a/u5;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/tappx/a/h5$a;",
            ")",
            "Lcom/tappx/a/u5<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/tappx/a/u5;

    invoke-direct {v0, p0, p1}, Lcom/tappx/a/u5;-><init>(Ljava/lang/Object;Lcom/tappx/a/h5$a;)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .registers 2

    .line 3
    iget-object v0, p0, Lcom/tappx/a/u5;->c:Lcom/tappx/a/z5;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
