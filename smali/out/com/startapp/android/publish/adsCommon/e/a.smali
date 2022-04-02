.class public Lcom/startapp/android/publish/adsCommon/e/a;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/adsCommon/e/a$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/e/a;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 64
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 66
    invoke-static {p1}, Lcom/startapp/common/b/a;->a(Landroid/content/Context;)Lcom/startapp/common/b/a;

    .line 67
    new-instance p1, Lcom/startapp/android/publish/adsCommon/e/a$a;

    invoke-direct {p1}, Lcom/startapp/android/publish/adsCommon/e/a$a;-><init>()V

    invoke-static {p1}, Lcom/startapp/common/b/a;->a(Lcom/startapp/common/b/a/a;)V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .registers 3

    const-class v0, Lcom/startapp/android/publish/adsCommon/e/a;

    monitor-enter v0

    .line 59
    :try_start_3
    new-instance v1, Lcom/startapp/android/publish/adsCommon/e/a;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/adsCommon/e/a;-><init>(Landroid/content/Context;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 60
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 7

    .line 72
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 73
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 74
    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 75
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_42

    const-string v1, "startapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "truenet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 77
    :cond_27
    new-instance v1, Lcom/startapp/common/b/b$a;

    const v2, 0x33c30579

    invoke-direct {v1, v2}, Lcom/startapp/common/b/b$a;-><init>(I)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Lcom/startapp/common/b/b$a;->a(J)Lcom/startapp/common/b/b$a;

    move-result-object v1

    const-string v2, "KEY_STACK_TRACE"

    invoke-virtual {v1, v2, v0}, Lcom/startapp/common/b/b$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/startapp/common/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/common/b/b$a;->a()Lcom/startapp/common/b/b;

    move-result-object v0

    invoke-static {v0}, Lcom/startapp/common/b/a;->a(Lcom/startapp/common/b/b;)Z

    .line 80
    :cond_42
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/e/a;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
