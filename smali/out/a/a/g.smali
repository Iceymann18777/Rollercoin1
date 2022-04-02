.class final La/a/g;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements La/a/c;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "La/a/c<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private volatile _value:Ljava/lang/Object;

.field private initializer:La/a/b/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a/b/a/a<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(La/a/b/a/a;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/a/b/a/a<",
            "+TT;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v0, "initializer"

    invoke-static {p1, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, La/a/g;->initializer:La/a/b/a/a;

    .line 57
    sget-object p1, La/a/i;->a:La/a/i;

    iput-object p1, p0, La/a/g;->_value:Ljava/lang/Object;

    if-eqz p2, :cond_11

    goto :goto_12

    :cond_11
    move-object p2, p0

    .line 59
    :goto_12
    iput-object p2, p0, La/a/g;->lock:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(La/a/b/a/a;Ljava/lang/Object;ILa/a/b/b/e;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 55
    :cond_5
    invoke-direct {p0, p1, p2}, La/a/g;-><init>(La/a/b/a/a;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, La/a/g;->_value:Ljava/lang/Object;

    .line 64
    sget-object v1, La/a/i;->a:La/a/i;

    if-eq v0, v1, :cond_7

    return-object v0

    .line 69
    :cond_7
    iget-object v0, p0, La/a/g;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_a
    iget-object v1, p0, La/a/g;->_value:Ljava/lang/Object;

    .line 71
    sget-object v2, La/a/i;->a:La/a/i;

    if-eq v1, v2, :cond_11

    goto :goto_23

    .line 74
    :cond_11
    iget-object v1, p0, La/a/g;->initializer:La/a/b/a/a;

    if-nez v1, :cond_18

    invoke-static {}, La/a/b/b/h;->a()V

    :cond_18
    invoke-interface {v1}, La/a/b/a/a;->a()Ljava/lang/Object;

    move-result-object v1

    .line 75
    iput-object v1, p0, La/a/g;->_value:Ljava/lang/Object;

    const/4 v2, 0x0

    .line 76
    check-cast v2, La/a/b/a/a;

    iput-object v2, p0, La/a/g;->initializer:La/a/b/a/a;
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_25

    .line 69
    :goto_23
    monitor-exit v0

    return-object v1

    :catchall_25
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public b()Z
    .registers 3

    .line 82
    iget-object v0, p0, La/a/g;->_value:Ljava/lang/Object;

    sget-object v1, La/a/i;->a:La/a/i;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 84
    invoke-virtual {p0}, La/a/g;->b()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, La/a/g;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_f
    const-string v0, "Lazy value not initialized yet."

    :goto_11
    return-object v0
.end method
