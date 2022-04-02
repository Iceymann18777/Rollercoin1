.class public final Lcom/yandex/metrica/impl/utils/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/utils/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/yandex/metrica/impl/utils/h$a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 37
    iget-object v0, p0, Lcom/yandex/metrica/impl/utils/h$a;->a:Landroid/content/Context;

    .line 1055
    :try_start_2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1056
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x204

    .line 1055
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1059
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_40

    .line 1060
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v2, :cond_40

    aget-object v4, v1, v3

    .line 1061
    const-class v5, Lcom/yandex/metrica/MetricaService;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    iget-boolean v4, v4, Landroid/content/pm/ServiceInfo;->enabled:Z

    if-nez v4, :cond_3d

    .line 1062
    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcom/yandex/metrica/MetricaService;

    invoke-direct {v4, v0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2043
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v4, v6, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3d} :catch_40

    :cond_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :catch_40
    :cond_40
    return-void
.end method
