.class public final Lcom/truenet/android/TrueNetSDK$a;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truenet/android/TrueNetSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(La/a/b/b/e;)V
    .registers 2

    .line 23
    invoke-direct {p0}, Lcom/truenet/android/TrueNetSDK$a;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/truenet/android/TrueNetSDK$a;Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 23
    invoke-direct {p0, p1}, Lcom/truenet/android/TrueNetSDK$a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final a(IJ)V
    .registers 8

    .line 101
    invoke-static {p2, p3}, Lcom/truenet/android/TrueNetSDK;->access$setRequestDelay$cp(J)V

    .line 102
    invoke-static {}, Lcom/truenet/android/TrueNetSDK;->access$getIntervals$cp()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, La/a/c/a;->a(II)I

    move-result p1

    invoke-static {p1}, Lcom/truenet/android/TrueNetSDK;->access$setIntervalPosition$cp(I)V

    const/4 p1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    if-eqz v0, :cond_21

    goto :goto_39

    .line 105
    :cond_21
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lcom/truenet/android/TrueNetSDK;->access$getIntervals$cp()Ljava/util/List;

    move-result-object p3

    invoke-static {}, Lcom/truenet/android/TrueNetSDK;->access$getIntervalPosition$cp()I

    move-result v0

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    .line 106
    :goto_39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheduled millis: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "JobManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x17de4

    .line 107
    invoke-static {v0, p1}, Lcom/startapp/common/b/a;->a(IZ)V

    .line 108
    new-instance v2, Lcom/startapp/common/b/b$a;

    invoke-direct {v2, v0}, Lcom/startapp/common/b/b$a;-><init>(I)V

    .line 109
    invoke-virtual {v2, p2, p3}, Lcom/startapp/common/b/b$a;->a(J)Lcom/startapp/common/b/b$a;

    move-result-object p2

    .line 110
    invoke-virtual {p2, p1}, Lcom/startapp/common/b/b$a;->a(Z)Lcom/startapp/common/b/b$a;

    move-result-object p1

    const-string p2, "TruenetCheckLinksJob"

    const-string p3, "TruenetJobKey"

    .line 111
    invoke-virtual {p1, p2, p3}, Lcom/startapp/common/b/b$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/startapp/common/b/b$a;

    move-result-object p1

    .line 112
    invoke-virtual {p1, v1}, Lcom/startapp/common/b/b$a;->b(Z)Lcom/startapp/common/b/b$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapp/common/b/b$a;->a()Lcom/startapp/common/b/b;

    move-result-object p1

    .line 108
    invoke-static {p1}, Lcom/startapp/common/b/a;->a(Lcom/startapp/common/b/b;)Z

    return-void
.end method

.method private final a(Landroid/content/Context;)V
    .registers 9

    .line 82
    invoke-static {p1}, Lcom/startapp/common/b/a;->a(Landroid/content/Context;)Lcom/startapp/common/b/a;

    .line 83
    new-instance v0, Lcom/truenet/android/TrueNetSDK;

    invoke-direct {v0}, Lcom/truenet/android/TrueNetSDK;-><init>()V

    check-cast v0, Lcom/startapp/common/b/a/a;

    invoke-static {v0}, Lcom/startapp/common/b/a;->a(Lcom/startapp/common/b/a/a;)V

    .line 84
    move-object v1, p0

    check-cast v1, Lcom/truenet/android/TrueNetSDK$a;

    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/truenet/android/TrueNetSDK$a;->a(Lcom/truenet/android/TrueNetSDK$a;Landroid/content/Context;JILjava/lang/Object;)V

    return-void
.end method

.method private final a(Landroid/content/Context;J)V
    .registers 6

    .line 88
    invoke-static {}, Lcom/truenet/android/TrueNetSDK;->access$getThreadFactory$cp()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/truenet/android/TrueNetSDK$a$d;

    invoke-direct {v1, p2, p3, p1}, Lcom/truenet/android/TrueNetSDK$a$d;-><init>(JLandroid/content/Context;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final a(Landroid/content/Context;Lcom/truenet/android/LinksData;La/a/b/a/a;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/truenet/android/LinksData;",
            "La/a/b/a/a<",
            "La/a/j;",
            ">;)V"
        }
    .end annotation

    .line 169
    new-instance v8, Lcom/truenet/android/c;

    .line 170
    invoke-virtual {p2}, Lcom/truenet/android/LinksData;->getValidation()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 239
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, La/a/a/g;->a(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 240
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 241
    check-cast v2, Lcom/truenet/android/Link;

    .line 170
    invoke-virtual {v2}, Lcom/truenet/android/Link;->getValidationUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 242
    :cond_2d
    move-object v2, v1

    check-cast v2, Ljava/util/List;

    .line 171
    invoke-static {}, Lcom/truenet/android/TrueNetSDK;->access$getThreadFactory$cp()Ljava/util/concurrent/ThreadFactory;

    move-result-object v3

    .line 172
    invoke-virtual {p2}, Lcom/truenet/android/LinksData;->getMaxRedirectTime()J

    move-result-wide v4

    .line 173
    invoke-virtual {p2}, Lcom/truenet/android/LinksData;->getNumOfRedirect()I

    move-result v6

    .line 174
    invoke-virtual {p2}, Lcom/truenet/android/LinksData;->getValidateParallel()I

    move-result v7

    move-object v0, v8

    move-object v1, p1

    .line 169
    invoke-direct/range {v0 .. v7}, Lcom/truenet/android/c;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/concurrent/ThreadFactory;JII)V

    .line 176
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 178
    new-instance v1, Lcom/truenet/android/TrueNetSDK$a$a;

    invoke-direct {v1, p2, v0, p1, p3}, Lcom/truenet/android/TrueNetSDK$a$a;-><init>(Lcom/truenet/android/LinksData;Ljava/util/concurrent/ConcurrentLinkedQueue;Landroid/content/Context;La/a/b/a/a;)V

    check-cast v1, La/a/b/a/a;

    invoke-virtual {v8, v1}, Lcom/truenet/android/c;->a(La/a/b/a/a;)V

    .line 190
    new-instance p3, Lcom/truenet/android/TrueNetSDK$a$b;

    invoke-direct {p3, p2, p1, v0}, Lcom/truenet/android/TrueNetSDK$a$b;-><init>(Lcom/truenet/android/LinksData;Landroid/content/Context;Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    check-cast p3, La/a/b/a/b;

    invoke-virtual {v8, p3}, Lcom/truenet/android/c;->a(La/a/b/a/b;)V

    return-void
.end method

.method private final a(Landroid/content/Context;Ljava/lang/String;La/a/b/a/a;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "La/a/b/a/a<",
            "La/a/j;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 153
    invoke-static {v0}, Lcom/truenet/android/TrueNetSDK;->access$setIntervalPosition$cp(I)V

    const-wide/16 v0, 0x0

    .line 154
    invoke-static {v0, v1}, Lcom/truenet/android/TrueNetSDK;->access$setRequestDelay$cp(J)V

    .line 156
    const-class v2, Lcom/truenet/android/LinksData;

    invoke-static {p2, v2}, Lcom/startapp/common/c/b;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/truenet/android/LinksData;

    .line 157
    invoke-virtual {p2}, Lcom/truenet/android/LinksData;->getValidation()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_27

    .line 164
    move-object v0, p0

    check-cast v0, Lcom/truenet/android/TrueNetSDK$a;

    const-string v1, "response"

    invoke-static {p2, v1}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1, p2, p3}, Lcom/truenet/android/TrueNetSDK$a;->a(Landroid/content/Context;Lcom/truenet/android/LinksData;La/a/b/a/a;)V

    goto :goto_3c

    .line 159
    :cond_27
    move-object v2, p0

    check-cast v2, Lcom/truenet/android/TrueNetSDK$a;

    invoke-virtual {p2}, Lcom/truenet/android/LinksData;->getSleep()J

    move-result-wide v3

    invoke-direct {v2, p1, v3, v4}, Lcom/truenet/android/TrueNetSDK$a;->a(Landroid/content/Context;J)V

    .line 160
    invoke-virtual {p2}, Lcom/truenet/android/LinksData;->getSleep()J

    move-result-wide p1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_3c

    .line 161
    invoke-interface {p3}, La/a/b/a/a;->a()Ljava/lang/Object;

    :cond_3c
    :goto_3c
    return-void
.end method

.method public static final synthetic a(Lcom/truenet/android/TrueNetSDK$a;IJ)V
    .registers 4

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/truenet/android/TrueNetSDK$a;->a(IJ)V

    return-void
.end method

.method public static final synthetic a(Lcom/truenet/android/TrueNetSDK$a;Landroid/content/Context;J)V
    .registers 4

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/truenet/android/TrueNetSDK$a;->a(Landroid/content/Context;J)V

    return-void
.end method

.method static bridge synthetic a(Lcom/truenet/android/TrueNetSDK$a;Landroid/content/Context;JILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_6

    const-wide/16 p2, 0x0

    .line 87
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lcom/truenet/android/TrueNetSDK$a;->a(Landroid/content/Context;J)V

    return-void
.end method

.method public static final synthetic a(Lcom/truenet/android/TrueNetSDK$a;Landroid/content/Context;Ljava/lang/String;La/a/b/a/a;)V
    .registers 4

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/truenet/android/TrueNetSDK$a;->a(Landroid/content/Context;Ljava/lang/String;La/a/b/a/a;)V

    return-void
.end method

.method public static final synthetic a(Lcom/truenet/android/TrueNetSDK$a;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 3

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/truenet/android/TrueNetSDK$a;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 6

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Something went wrong in thread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TrueNetSDK"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private final b(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 142
    new-instance v0, Lcom/truenet/android/a;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2, v1}, Lcom/truenet/android/a;-><init>(Landroid/content/Context;Landroid/telephony/TelephonyManager;ILa/a/b/b/e;)V

    invoke-virtual {v0}, Lcom/truenet/android/a;->a()Lcom/truenet/android/DeviceInfo;

    move-result-object v0

    .line 143
    move-object v1, p0

    check-cast v1, Lcom/truenet/android/TrueNetSDK$a;

    invoke-direct {v1, p1}, Lcom/truenet/android/TrueNetSDK$a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/truenet/android/DeviceInfo;->setPublisherId(Ljava/lang/String;)V

    .line 144
    invoke-static {v0}, Lcom/startapp/common/c/b;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "JSONParser.toJson(info)"

    invoke-static {p1, v0}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public static final synthetic b(Lcom/truenet/android/TrueNetSDK$a;Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 23
    invoke-direct {p0, p1}, Lcom/truenet/android/TrueNetSDK$a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final c(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, "TruenetJobKey"

    const/4 v1, 0x0

    .line 148
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "PrefsPublisherId"

    const-string v1, "Undefined"

    .line 149
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "prefs.getString(PREFS_PUBLISHER_ID, \"Undefined\")"

    invoke-static {p1, v0}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final a(Landroid/content/Context;La/a/b/a/a;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "La/a/b/a/a<",
            "La/a/j;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "finish"

    invoke-static {p2, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_a
    const-string v0, "TruenetJobKey"

    const/4 v1, 0x0

    .line 117
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "PrefsEnabled"

    const/4 v3, 0x1

    .line 118
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_24

    const p1, 0x17de4

    .line 119
    invoke-static {p1, v1}, Lcom/startapp/common/b/a;->a(IZ)V

    .line 120
    invoke-interface {p2}, La/a/b/a/a;->a()Ljava/lang/Object;

    return-void

    .line 124
    :cond_24
    invoke-static {}, Lcom/truenet/android/TrueNetSDK;->access$getThreadFactory$cp()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/truenet/android/TrueNetSDK$a$c;

    invoke-direct {v1, p1, p2}, Lcom/truenet/android/TrueNetSDK$a$c;-><init>(Landroid/content/Context;La/a/b/a/a;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_36
    .catchall {:try_start_a .. :try_end_36} :catchall_37

    goto :goto_47

    :catchall_37
    move-exception p1

    .line 137
    move-object p2, p0

    check-cast p2, Lcom/truenet/android/TrueNetSDK$a;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "Thread.currentThread()"

    invoke-static {v0, v1}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0, p1}, Lcom/truenet/android/TrueNetSDK$a;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_47
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publisherID"

    invoke-static {p2, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_a
    const-string v0, "TruenetJobKey"

    const/4 v1, 0x0

    .line 55
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 56
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "PrefsPublisherId"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p2, "PrefsEnabled"

    const/4 v1, 0x1

    .line 58
    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_47

    invoke-static {}, Lcom/truenet/android/TrueNetSDK;->access$getWasInitCalled$cp()Z

    move-result p2

    if-nez p2, :cond_47

    .line 59
    move-object p2, p0

    check-cast p2, Lcom/truenet/android/TrueNetSDK$a;

    invoke-direct {p2, p1}, Lcom/truenet/android/TrueNetSDK$a;->a(Landroid/content/Context;)V

    .line 60
    invoke-static {v1}, Lcom/truenet/android/TrueNetSDK;->access$setWasInitCalled$cp(Z)V
    :try_end_36
    .catchall {:try_start_a .. :try_end_36} :catchall_37

    goto :goto_47

    :catchall_37
    move-exception p1

    .line 63
    move-object p2, p0

    check-cast p2, Lcom/truenet/android/TrueNetSDK$a;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "Thread.currentThread()"

    invoke-static {v0, v1}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0, p1}, Lcom/truenet/android/TrueNetSDK$a;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_47
    :goto_47
    return-void
.end method

.method public final a(Landroid/content/Context;Z)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_5
    const-string v0, "TruenetJobKey"

    const/4 v1, 0x0

    .line 69
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 70
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PrefsEnabled"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p2, :cond_3c

    .line 72
    invoke-static {}, Lcom/truenet/android/TrueNetSDK;->access$getWasInitCalled$cp()Z

    move-result p2

    if-nez p2, :cond_3c

    .line 73
    move-object p2, p0

    check-cast p2, Lcom/truenet/android/TrueNetSDK$a;

    invoke-direct {p2, p1}, Lcom/truenet/android/TrueNetSDK$a;->a(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 74
    invoke-static {p1}, Lcom/truenet/android/TrueNetSDK;->access$setWasInitCalled$cp(Z)V
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_2c

    goto :goto_3c

    :catchall_2c
    move-exception p1

    .line 77
    move-object p2, p0

    check-cast p2, Lcom/truenet/android/TrueNetSDK$a;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "Thread.currentThread()"

    invoke-static {v0, v1}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0, p1}, Lcom/truenet/android/TrueNetSDK$a;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_3c
    :goto_3c
    return-void
.end method
