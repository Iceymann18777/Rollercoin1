.class Lcom/appsgeyser/sdk/datasdk/PermissionsRequester;
.super Ljava/lang/Object;
.source "PermissionsRequester.java"


# static fields
.field private static final oneAudiencePermissions:[Ljava/lang/String;

.field private static final predicioPermissions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "android.permission.GET_ACCOUNTS"

    .line 29
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appsgeyser/sdk/datasdk/PermissionsRequester;->oneAudiencePermissions:[Ljava/lang/String;

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 33
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appsgeyser/sdk/datasdk/PermissionsRequester;->predicioPermissions:[Ljava/lang/String;

    return-void
.end method

.method private static getNeedRequestPermissions(Landroid/app/Activity;Ljava/util/Set;)[Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 88
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 90
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 91
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_9

    .line 93
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 97
    :cond_1f
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p0

    if-lez p0, :cond_32

    .line 98
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_32
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getPermissionRequiredFromConfig(Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 106
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method static isPermissionsRequired(Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Landroid/content/Context;)Z
    .registers 7

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-ge v0, v2, :cond_8

    return v1

    .line 43
    :cond_8
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 46
    invoke-static {p0}, Lcom/appsgeyser/sdk/datasdk/PermissionsRequester;->getPermissionRequiredFromConfig(Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_19
    :goto_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_19

    .line 49
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 53
    :cond_33
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p0

    if-lez p0, :cond_3a

    const/4 v1, 0x1

    :cond_3a
    return v1
.end method

.method static requestAllActiveByDefaultPermissions(Landroid/app/Activity;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;I)V
    .registers 4

    .line 60
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 62
    invoke-static {p0, p1}, Lcom/appsgeyser/sdk/datasdk/PermissionsRequester;->getNeedRequestPermissions(Landroid/app/Activity;Ljava/util/Set;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 65
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_19

    :cond_f
    const/16 p1, 0x4e

    const/4 p2, 0x0

    new-array v0, p2, [Ljava/lang/String;

    new-array p2, p2, [I

    .line 67
    invoke-virtual {p0, p1, v0, p2}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :goto_19
    return-void
.end method

.method static requestAllActivePermissions(Landroid/app/Activity;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;I)V
    .registers 4

    .line 75
    invoke-static {p1}, Lcom/appsgeyser/sdk/datasdk/PermissionsRequester;->getPermissionRequiredFromConfig(Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)Ljava/util/Set;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/appsgeyser/sdk/datasdk/PermissionsRequester;->getNeedRequestPermissions(Landroid/app/Activity;Ljava/util/Set;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 78
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_18

    :cond_e
    const/16 p1, 0x4e

    const/4 p2, 0x0

    new-array v0, p2, [Ljava/lang/String;

    new-array p2, p2, [I

    .line 80
    invoke-virtual {p0, p1, v0, p2}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :goto_18
    return-void
.end method
