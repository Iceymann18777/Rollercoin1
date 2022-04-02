.class public Lcom/tappx/a/m1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/m1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static volatile c:Lcom/tappx/a/m1$a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/tappx/a/y0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 4
    new-instance v0, Lcom/tappx/a/y0;

    invoke-direct {v0, p1}, Lcom/tappx/a/y0;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/tappx/a/m1$a;-><init>(Landroid/content/Context;Lcom/tappx/a/y0;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/tappx/a/y0;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tappx/a/m1$a;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/tappx/a/m1$a;->b:Lcom/tappx/a/y0;

    return-void
.end method

.method public static final a(Landroid/content/Context;)Lcom/tappx/a/m1$a;
    .registers 3

    .line 1
    sget-object v0, Lcom/tappx/a/m1$a;->c:Lcom/tappx/a/m1$a;

    if-nez v0, :cond_17

    .line 3
    const-class v0, Lcom/tappx/a/m1$a;

    monitor-enter v0

    .line 4
    :try_start_7
    sget-object v1, Lcom/tappx/a/m1$a;->c:Lcom/tappx/a/m1$a;

    if-nez v1, :cond_12

    .line 6
    new-instance v1, Lcom/tappx/a/m1$a;

    invoke-direct {v1, p0}, Lcom/tappx/a/m1$a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tappx/a/m1$a;->c:Lcom/tappx/a/m1$a;

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
    sget-object p0, Lcom/tappx/a/m1$a;->c:Lcom/tappx/a/m1$a;

    return-object p0
.end method

.method private c()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/a/m1$a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_10
    invoke-static {v0}, Lcom/tappx/a/e3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tappx/a/m1$a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.google.android.gms"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_13} :catch_14

    return-object v0

    :catch_14
    const/4 v0, 0x0

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/tappx/a/m1$a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/tappx/a/m1$a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "google_play_services_version"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_18
    iget-object v1, p0, Lcom/tappx/a/m1$a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "3.1.8"

    return-object v0
.end method

.method public b()Lcom/tappx/a/m1;
    .registers 9

    .line 1
    invoke-virtual {p0}, Lcom/tappx/a/m1$a;->a()Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v0, p0, Lcom/tappx/a/m1$a;->b:Lcom/tappx/a/y0;

    invoke-virtual {v0}, Lcom/tappx/a/y0;->a()Lcom/tappx/a/y0$a;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_18

    .line 6
    invoke-virtual {v0}, Lcom/tappx/a/y0$a;->b()Z

    move-result v2

    .line 7
    invoke-virtual {v0}, Lcom/tappx/a/y0$a;->a()Ljava/lang/String;

    move-result-object v0

    move v6, v2

    move-object v2, v0

    goto :goto_26

    :cond_18
    const-string v0, "krJOYpdJwB0z9kroej+tvgvunIIlLf/GdGehIr+r2OSbd/1jAuDbW6Z7w8Rb+zP0p97z+Ss5rCSYnT4eKWDNHxv5azbxwwxG3XGQe+SC2+3s6Z9kUQ084l1qIWDEae3FGWLeg8k8luby4GoV6Q0RRg"

    .line 9
    invoke-static {v0}, Lcom/tappx/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/tappx/a/j0;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    move-object v2, v0

    const/4 v6, 0x0

    .line 11
    :goto_26
    invoke-direct {p0}, Lcom/tappx/a/m1$a;->c()Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-direct {p0}, Lcom/tappx/a/m1$a;->d()Ljava/lang/String;

    move-result-object v4

    .line 13
    invoke-direct {p0}, Lcom/tappx/a/m1$a;->e()Ljava/lang/String;

    move-result-object v5

    .line 14
    new-instance v7, Lcom/tappx/a/m1;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/tappx/a/m1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v7
.end method
