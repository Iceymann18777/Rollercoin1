.class public final Lcom/appnext/core/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static hp:Lcom/appnext/core/j;


# instance fields
.field private be:I

.field private hq:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x18

    .line 12
    iput v0, p0, Lcom/appnext/core/j;->be:I

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/appnext/core/j;->hq:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a(Lcom/appnext/core/j;)Ljava/util/HashMap;
    .registers 1

    .line 8
    iget-object p0, p0, Lcom/appnext/core/j;->hq:Ljava/util/HashMap;

    return-object p0
.end method

.method public static declared-synchronized bj()Lcom/appnext/core/j;
    .registers 2

    const-class v0, Lcom/appnext/core/j;

    monitor-enter v0

    .line 30
    :try_start_3
    sget-object v1, Lcom/appnext/core/j;->hp:Lcom/appnext/core/j;

    if-nez v1, :cond_e

    .line 31
    new-instance v1, Lcom/appnext/core/j;

    invoke-direct {v1}, Lcom/appnext/core/j;-><init>()V

    sput-object v1, Lcom/appnext/core/j;->hp:Lcom/appnext/core/j;

    .line 33
    :cond_e
    sget-object v1, Lcom/appnext/core/j;->hp:Lcom/appnext/core/j;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final ab(Ljava/lang/String;)V
    .registers 3

    .line 51
    iget-object v0, p0, Lcom/appnext/core/j;->hq:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final b(I)V
    .registers 2

    .line 55
    iput p1, p0, Lcom/appnext/core/j;->be:I

    return-void
.end method

.method public final d(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .line 19
    iget-object v0, p0, Lcom/appnext/core/j;->hq:Ljava/util/HashMap;

    const-string v1, "/"

    const-string v2, ""

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 20
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/appnext/core/j$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/appnext/core/j$1;-><init>(Lcom/appnext/core/j;Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 25
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1d
    return-void
.end method

.method public final n(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 37
    iget-object v0, p0, Lcom/appnext/core/j;->hq:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p2, p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final o(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 41
    iget-object v0, p0, Lcom/appnext/core/j;->hq:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/SharedPreferences;

    const-wide/16 v0, -0x1

    invoke-interface {p2, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_25

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const v2, 0x36ee80

    iget v3, p0, Lcom/appnext/core/j;->be:I

    mul-int v3, v3, v2

    int-to-long v2, v3

    sub-long/2addr v0, v2

    cmp-long v2, v0, p1

    if-gtz v2, :cond_25

    const/4 p1, 0x1

    return p1

    :cond_25
    const/4 p1, 0x0

    return p1
.end method

.method public final p(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 46
    iget-object v0, p0, Lcom/appnext/core/j;->hq:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/SharedPreferences;

    const-wide/16 v0, -0x1

    invoke-interface {p2, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_20

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x1d4c0

    sub-long/2addr v0, v2

    cmp-long v2, v0, p1

    if-gtz v2, :cond_20

    const/4 p1, 0x1

    return p1

    :cond_20
    const/4 p1, 0x0

    return p1
.end method
