.class Lcom/yandex/metrica/impl/ob/cz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/cv;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/cz;->a:Landroid/content/Context;

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

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cz;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 36
    :try_start_b
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/cz;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 37
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v2, :cond_2b

    aget-object v4, v1, v3

    .line 39
    new-instance v5, Lcom/yandex/metrica/impl/ob/cw;

    const/4 v6, 0x1

    invoke-direct {v5, v4, v6}, Lcom/yandex/metrica/impl/ob/cw;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_28
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_28} :catch_2b

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :catch_2b
    :cond_2b
    return-object v0
.end method
