.class public Lcom/tappx/a/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/f0$a;,
        Lcom/tappx/a/f0$b;
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

.field public final b:Lcom/tappx/a/a0;


# direct methods
.method private constructor <init>(Lcom/tappx/a/a0;)V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/tappx/a/f0;->a:Ljava/lang/Object;

    .line 6
    iput-object p1, p0, Lcom/tappx/a/f0;->b:Lcom/tappx/a/a0;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tappx/a/f0;->a:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/tappx/a/f0;->b:Lcom/tappx/a/a0;

    return-void
.end method

.method public static a(Lcom/tappx/a/a0;)Lcom/tappx/a/f0;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tappx/a/a0;",
            ")",
            "Lcom/tappx/a/f0<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/tappx/a/f0;

    invoke-direct {v0, p0}, Lcom/tappx/a/f0;-><init>(Lcom/tappx/a/a0;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lcom/tappx/a/f0;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/tappx/a/f0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/tappx/a/f0;

    invoke-direct {v0, p0}, Lcom/tappx/a/f0;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .registers 2

    .line 3
    iget-object v0, p0, Lcom/tappx/a/f0;->b:Lcom/tappx/a/a0;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
