.class public Lcom/startapp/common/a/b$c;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/common/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 79
    iput-object v0, p0, Lcom/startapp/common/a/b$c;->a:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/startapp/common/a/b$c;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/startapp/common/a/b$c;->c:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 84
    :try_start_1
    iget-object v0, p0, Lcom/startapp/common/a/b$c;->a:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .registers 2

    monitor-enter p0

    .line 88
    :try_start_1
    iput-object p1, p0, Lcom/startapp/common/a/b$c;->a:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 89
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Z)V
    .registers 2

    monitor-enter p0

    .line 96
    :try_start_1
    iput-boolean p1, p0, Lcom/startapp/common/a/b$c;->c:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 97
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .registers 2

    monitor-enter p0

    .line 104
    :try_start_1
    iput-object p1, p0, Lcom/startapp/common/a/b$c;->b:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 105
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()Z
    .registers 2

    monitor-enter p0

    .line 92
    :try_start_1
    iget-boolean v0, p0, Lcom/startapp/common/a/b$c;->c:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 100
    :try_start_1
    iget-object v0, p0, Lcom/startapp/common/a/b$c;->b:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
