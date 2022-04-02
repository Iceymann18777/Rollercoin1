.class Lcom/yandex/metrica/impl/ob/ci$c;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/ci;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 420
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 421
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "passed_id"

    .line 422
    invoke-virtual {p0, v1, p2}, Lcom/yandex/metrica/impl/ob/ci$c;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "package_name"

    .line 423
    invoke-virtual {p0, p2, v0}, Lcom/yandex/metrica/impl/ob/ci$c;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    :try_start_11
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    const-string p2, "version_code"

    .line 426
    iget v0, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/yandex/metrica/impl/ob/ci$c;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "version_name"

    .line 427
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lcom/yandex/metrica/impl/ob/ci$c;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_2c} :catch_2c

    :catch_2c
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 433
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/ci$c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "stored_device_id"

    .line 434
    invoke-virtual {p0, p1, p3}, Lcom/yandex/metrica/impl/ob/ci$c;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
