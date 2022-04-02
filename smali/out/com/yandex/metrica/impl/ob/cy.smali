.class Lcom/yandex/metrica/impl/ob/cy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/cv;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/cy;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/cw;",
            ">;"
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cy;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 40
    :try_start_b
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/cy;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 41
    :goto_19
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_3f

    .line 42
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v4, v4, v3

    .line 43
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v5, v5, v3

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_34

    .line 45
    new-instance v5, Lcom/yandex/metrica/impl/ob/cw;

    const/4 v6, 0x1

    invoke-direct {v5, v4, v6}, Lcom/yandex/metrica/impl/ob/cw;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    .line 48
    :cond_34
    new-instance v5, Lcom/yandex/metrica/impl/ob/cw;

    invoke-direct {v5, v4, v2}, Lcom/yandex/metrica/impl/ob/cw;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_3c} :catch_3f

    :goto_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :catch_3f
    :cond_3f
    return-object v0
.end method
