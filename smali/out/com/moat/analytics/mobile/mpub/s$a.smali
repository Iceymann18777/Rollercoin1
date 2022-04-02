.class Lcom/moat/analytics/mobile/mpub/s$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/mpub/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/mpub/s$a;->a:Z

    const-string v0, "_unknown_"

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/s$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/s$a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/s$a;->d:Ljava/lang/String;

    :try_start_e
    invoke-static {}, Lcom/moat/analytics/mobile/mpub/s;->b()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_38

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/moat/analytics/mobile/mpub/s$a;->a:Z

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/moat/analytics/mobile/mpub/s$a;->c:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/s$a;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/s$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/s$a;->d:Ljava/lang/String;

    goto :goto_45

    :cond_38
    const/4 v0, 0x3

    const-string v1, "Util"

    const-string v2, "Can\'t get app name, appContext is null."

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/mpub/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_40} :catch_41

    goto :goto_45

    :catch_41
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/mpub/n;->a(Ljava/lang/Exception;)V

    :goto_45
    return-void
.end method

.method synthetic constructor <init>(Lcom/moat/analytics/mobile/mpub/s$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/s$a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/mpub/s$a;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/moat/analytics/mobile/mpub/s$a;->a:Z

    return p0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/s$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/s$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/s$a;->d:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    const-string v0, "_unknown_"

    :goto_7
    return-object v0
.end method
