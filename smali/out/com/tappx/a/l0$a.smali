.class public Lcom/tappx/a/l0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static volatile b:Lcom/tappx/a/l0$a;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tappx/a/l0$a;->a:Landroid/content/Context;

    return-void
.end method

.method public static final a(Landroid/content/Context;)Lcom/tappx/a/l0$a;
    .registers 3

    .line 1
    sget-object v0, Lcom/tappx/a/l0$a;->b:Lcom/tappx/a/l0$a;

    if-nez v0, :cond_17

    .line 3
    const-class v0, Lcom/tappx/a/l0$a;

    monitor-enter v0

    .line 4
    :try_start_7
    sget-object v1, Lcom/tappx/a/l0$a;->b:Lcom/tappx/a/l0$a;

    if-nez v1, :cond_12

    .line 6
    new-instance v1, Lcom/tappx/a/l0$a;

    invoke-direct {v1, p0}, Lcom/tappx/a/l0$a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tappx/a/l0$a;->b:Lcom/tappx/a/l0$a;

    .line 8
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 10
    :cond_17
    :goto_17
    sget-object p0, Lcom/tappx/a/l0$a;->b:Lcom/tappx/a/l0$a;

    return-object p0
.end method

.method private b()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/l0$a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v0, :cond_12

    .line 2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    :cond_12
    if-eqz v0, :cond_19

    .line 4
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_19
    const-string v0, "en-us"

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/a/l0$a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/tappx/a/l0$a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/tappx/a/l0;
    .registers 5

    .line 11
    iget-object v0, p0, Lcom/tappx/a/l0$a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-direct {p0}, Lcom/tappx/a/l0$a;->c()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-direct {p0}, Lcom/tappx/a/l0$a;->b()Ljava/lang/String;

    move-result-object v2

    .line 14
    new-instance v3, Lcom/tappx/a/l0;

    invoke-direct {v3, v1, v0, v2}, Lcom/tappx/a/l0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method
