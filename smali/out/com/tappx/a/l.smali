.class public Lcom/tappx/a/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private volatile a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private final b:Lcom/tappx/a/l$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tappx/a/l$a<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tappx/a/l$a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tappx/a/l$a<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tappx/a/l;->b:Lcom/tappx/a/l$a;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tappx/a/l;->a:Ljava/lang/Object;

    if-nez v0, :cond_18

    .line 3
    monitor-enter p0

    .line 4
    :try_start_5
    iget-object v0, p0, Lcom/tappx/a/l;->a:Ljava/lang/Object;

    if-nez v0, :cond_13

    .line 6
    iget-object v0, p0, Lcom/tappx/a/l;->b:Lcom/tappx/a/l$a;

    invoke-interface {v0}, Lcom/tappx/a/l$a;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tappx/a/l;->a:Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/tappx/a/l;->a:Ljava/lang/Object;

    .line 9
    :cond_13
    monitor-exit p0

    goto :goto_18

    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw v0

    :cond_18
    :goto_18
    return-object v0
.end method
