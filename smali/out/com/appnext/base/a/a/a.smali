.class public Lcom/appnext/base/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appnext/base/a/a/a$a;
    }
.end annotation


# static fields
.field private static dB:Lcom/appnext/base/a/a/a;

.field private static dC:Lcom/appnext/base/a/b;


# instance fields
.field private dA:Ljava/util/concurrent/atomic/AtomicInteger;

.field private dD:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/appnext/base/a/a/a;->dA:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 28
    invoke-static {p1}, Lcom/appnext/base/a/b;->c(Landroid/content/Context;)Lcom/appnext/base/a/b;

    move-result-object p1

    sput-object p1, Lcom/appnext/base/a/a/a;->dC:Lcom/appnext/base/a/b;

    return-void
.end method

.method public static a(ILjava/lang/Throwable;)V
    .registers 2

    .line 61
    sget-object p0, Lcom/appnext/base/a/a/a$1;->dE:[I

    return-void
.end method

.method public static ac()Lcom/appnext/base/a/a/a;
    .registers 3

    .line 32
    sget-object v0, Lcom/appnext/base/a/a/a;->dB:Lcom/appnext/base/a/a/a;

    if-nez v0, :cond_1f

    .line 33
    const-class v0, Lcom/appnext/base/a/a/a;

    monitor-enter v0

    .line 34
    :try_start_7
    sget-object v1, Lcom/appnext/base/a/a/a;->dB:Lcom/appnext/base/a/a/a;

    if-nez v1, :cond_1a

    .line 35
    new-instance v1, Lcom/appnext/base/a/a/a;

    invoke-static {}, Lcom/appnext/base/b/e;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/appnext/base/a/a/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/appnext/base/a/a/a;->dB:Lcom/appnext/base/a/a/a;

    .line 37
    :cond_1a
    monitor-exit v0

    goto :goto_1f

    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v1

    .line 39
    :cond_1f
    :goto_1f
    sget-object v0, Lcom/appnext/base/a/a/a;->dB:Lcom/appnext/base/a/a/a;

    return-object v0
.end method


# virtual methods
.method public final ad()Landroid/database/sqlite/SQLiteDatabase;
    .registers 3

    .line 44
    iget-object v0, p0, Lcom/appnext/base/a/a/a;->dA:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 46
    sget-object v0, Lcom/appnext/base/a/a/a;->dC:Lcom/appnext/base/a/b;

    invoke-virtual {v0}, Lcom/appnext/base/a/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/appnext/base/a/a/a;->dD:Landroid/database/sqlite/SQLiteDatabase;

    .line 48
    :cond_11
    iget-object v0, p0, Lcom/appnext/base/a/a/a;->dD:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public final ae()V
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/appnext/base/a/a/a;->dA:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_d

    .line 55
    iget-object v0, p0, Lcom/appnext/base/a/a/a;->dD:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_d
    return-void
.end method
