.class Lcom/yandex/metrica/impl/ob/fe;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/fe;->a:Ljava/lang/String;
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_14} :catch_15

    goto :goto_19

    :catch_15
    const-string v0, "0.0"

    .line 23
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/fe;->a:Ljava/lang/String;

    .line 25
    :goto_19
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/fe;->b:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/fe;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/fs;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)",
            "Lcom/yandex/metrica/impl/ob/fs;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/fg;->a(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/fs;

    move-result-object p1

    return-object p1
.end method

.method a()Ljava/lang/String;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fe;->a:Ljava/lang/String;

    return-object v0
.end method

.method b()Ljava/lang/String;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fe;->b:Ljava/lang/String;

    return-object v0
.end method

.method c()Ljava/lang/String;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fe;->c:Ljava/lang/String;

    return-object v0
.end method

.method d()Lcom/yandex/metrica/impl/ob/fs;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1109
    invoke-static {}, Lcom/yandex/metrica/impl/ob/a;->a()[Ljava/lang/String;

    move-result-object v1

    .line 1110
    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_19

    aget-object v4, v1, v3

    .line 1111
    invoke-static {v4}, Lcom/yandex/metrica/impl/ob/ex;->a(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v4

    .line 1112
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1061
    :cond_19
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/fg;->a(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/fs;

    move-result-object v0

    return-object v0
.end method
