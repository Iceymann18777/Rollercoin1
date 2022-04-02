.class Lcom/moat/analytics/mobile/mpub/s;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/mpub/s$b;,
        Lcom/moat/analytics/mobile/mpub/s$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Lcom/moat/analytics/mobile/mpub/s$a;

.field private static c:Lcom/moat/analytics/mobile/mpub/s$b;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/moat/analytics/mobile/mpub/s;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    sput-object p0, Lcom/moat/analytics/mobile/mpub/s;->a:Ljava/lang/String;

    return-object p0
.end method

.method static a(Landroid/content/Context;)V
    .registers 2

    :try_start_0
    new-instance v0, Lcom/moat/analytics/mobile/mpub/s$1;

    invoke-direct {v0, p0}, Lcom/moat/analytics/mobile/mpub/s$1;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_d

    :catch_9
    move-exception p0

    invoke-static {p0}, Lcom/moat/analytics/mobile/mpub/n;->a(Ljava/lang/Exception;)V

    :goto_d
    return-void
.end method

.method static b()Landroid/content/Context;
    .registers 1

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/MoatAnalytics;->getInstance()Lcom/moat/analytics/mobile/mpub/MoatAnalytics;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/mpub/k;

    iget-object v0, v0, Lcom/moat/analytics/mobile/mpub/k;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method static b(Landroid/content/Context;)Z
    .registers 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method static c()Lcom/moat/analytics/mobile/mpub/s$a;
    .registers 2

    sget-object v0, Lcom/moat/analytics/mobile/mpub/s;->b:Lcom/moat/analytics/mobile/mpub/s$a;

    if-eqz v0, :cond_a

    invoke-static {v0}, Lcom/moat/analytics/mobile/mpub/s$a;->a(Lcom/moat/analytics/mobile/mpub/s$a;)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_a
    new-instance v0, Lcom/moat/analytics/mobile/mpub/s$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/moat/analytics/mobile/mpub/s$a;-><init>(Lcom/moat/analytics/mobile/mpub/s$1;)V

    sput-object v0, Lcom/moat/analytics/mobile/mpub/s;->b:Lcom/moat/analytics/mobile/mpub/s$a;

    :cond_12
    sget-object v0, Lcom/moat/analytics/mobile/mpub/s;->b:Lcom/moat/analytics/mobile/mpub/s$a;

    return-object v0
.end method

.method static d()Lcom/moat/analytics/mobile/mpub/s$b;
    .registers 2

    sget-object v0, Lcom/moat/analytics/mobile/mpub/s;->c:Lcom/moat/analytics/mobile/mpub/s$b;

    if-eqz v0, :cond_8

    iget-boolean v0, v0, Lcom/moat/analytics/mobile/mpub/s$b;->f:Z

    if-nez v0, :cond_10

    :cond_8
    new-instance v0, Lcom/moat/analytics/mobile/mpub/s$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/moat/analytics/mobile/mpub/s$b;-><init>(Lcom/moat/analytics/mobile/mpub/s$1;)V

    sput-object v0, Lcom/moat/analytics/mobile/mpub/s;->c:Lcom/moat/analytics/mobile/mpub/s$b;

    :cond_10
    sget-object v0, Lcom/moat/analytics/mobile/mpub/s;->c:Lcom/moat/analytics/mobile/mpub/s$b;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/moat/analytics/mobile/mpub/s;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f()Z
    .registers 1

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/s;->g()Z

    move-result v0

    return v0
.end method

.method private static g()Z
    .registers 5

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/s;->b()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    const-string v4, "adb_enabled"

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-lt v2, v3, :cond_18

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_1e

    :cond_18
    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    const/4 v2, 0x1

    if-ne v0, v2, :cond_22

    const/4 v1, 0x1

    :cond_22
    return v1
.end method
