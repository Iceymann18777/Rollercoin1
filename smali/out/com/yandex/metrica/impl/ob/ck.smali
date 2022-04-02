.class public Lcom/yandex/metrica/impl/ob/ck;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/ci;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/ci;)V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ck;->a:Lcom/yandex/metrica/impl/ob/ci;

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/yandex/metrica/impl/ob/cf;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 151
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/metrica/impl/ob/cf;

    .line 152
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/cf;->d()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/metrica/impl/ob/ce;

    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/ce;->c()Lcom/yandex/metrica/impl/be$a;

    move-result-object v4

    iget-object v4, v4, Lcom/yandex/metrica/impl/be$a;->e:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    move-object v1, v3

    goto :goto_b

    :cond_30
    move-object v2, v3

    goto :goto_b

    :cond_32
    if-nez v1, :cond_35

    return-object v0

    .line 161
    :cond_35
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/cf;->a()Z

    move-result p0

    if-nez p0, :cond_40

    .line 162
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/cf;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 163
    :cond_40
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/cf;->a()Z

    move-result p0

    if-eqz p0, :cond_4b

    .line 164
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/cf;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 166
    :cond_4b
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/cf;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/impl/ob/cf;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 92
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    const-string v1, "method_carriers_count"

    invoke-static {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/ck;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_18
    :goto_18
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/metrica/impl/ob/cf;

    .line 99
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/cf;->b()I

    move-result v4

    if-le v4, v2, :cond_32

    .line 101
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 102
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v4

    goto :goto_18

    :cond_32
    if-ne v4, v2, :cond_18

    .line 105
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 109
    :cond_38
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_4a

    .line 110
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/cf;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/cf;->c()Ljava/lang/String;

    move-result-object p1

    goto :goto_6f

    .line 114
    :cond_4a
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yandex/metrica/impl/ob/cf;

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/cf;->b()I

    move-result p2

    if-ne p2, v2, :cond_5b

    .line 115
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ob/ck;->a(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p2

    goto :goto_5c

    :cond_5b
    const/4 p2, 0x0

    :goto_5c
    if-nez p2, :cond_6e

    .line 118
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/ck;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_69

    .line 120
    invoke-virtual {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/ck;->a(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    goto :goto_6f

    .line 122
    :cond_69
    invoke-virtual {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/ck;->a(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    goto :goto_6f

    :cond_6e
    move-object p1, p2

    :goto_6f
    return-object p1
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/cf;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/cf;",
            ">;"
        }
    .end annotation

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/cf;

    .line 132
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/cf;->a()Z

    move-result v2

    if-nez v2, :cond_9

    .line 133
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 136
    :cond_1f
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_27

    const/4 p0, 0x0

    return-object p0

    :cond_27
    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4

    const-string v0, "20799a27-fa80-4b36-b2db-0f8141f24180"

    .line 6022
    invoke-static {p0, v0}, Lcom/yandex/metrica/YandexMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/IReporter;

    move-result-object p0

    .line 246
    new-instance v0, Lcom/yandex/metrica/impl/ob/ck$3;

    invoke-direct {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/ck$3;-><init>(Ljava/lang/String;I)V

    const-string p1, "multiple_device_ids"

    invoke-interface {p0, p1, v0}, Lcom/yandex/metrica/IReporter;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/cf;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 201
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "method_device_id_comparing"

    invoke-static {p0, v1, v0}, Lcom/yandex/metrica/impl/ob/ck;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 204
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string p1, ""

    :cond_f
    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/cf;

    .line 205
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cf;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_f

    .line 206
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cf;->c()Ljava/lang/String;

    move-result-object p1

    goto :goto_f

    :cond_2a
    return-object p1
.end method

.method private static c(Landroid/content/Context;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/ce;",
            ">;)V"
        }
    .end annotation

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/ce;

    .line 215
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/ce;->c()Lcom/yandex/metrica/impl/be$a;

    move-result-object v2

    iget-object v2, v2, Lcom/yandex/metrica/impl/be$a;->d:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    .line 216
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/ce;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_32
    const-string p1, "20799a27-fa80-4b36-b2db-0f8141f24180"

    .line 5022
    invoke-static {p0, p1}, Lcom/yandex/metrica/YandexMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/IReporter;

    move-result-object p0

    .line 221
    new-instance p1, Lcom/yandex/metrica/impl/ob/ck$1;

    invoke-direct {p1, v0}, Lcom/yandex/metrica/impl/ob/ck$1;-><init>(Ljava/lang/StringBuilder;)V

    const-string v0, "multiple_device_ids"

    invoke-interface {p0, v0, p1}, Lcom/yandex/metrica/IReporter;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 51
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/ck;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method a(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/cf;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 174
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "method_first_installed"

    invoke-static {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/ck;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide v1, 0x7fffffffffffffffL

    .line 178
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 179
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1b
    :goto_1b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/metrica/impl/ob/cf;

    .line 180
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/cf;->e()Ljava/lang/Long;

    move-result-object v3

    .line 181
    invoke-virtual {v3, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v4

    if-gez v4, :cond_39

    .line 183
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 184
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v3

    goto :goto_1b

    :cond_39
    if-nez v4, :cond_1b

    .line 187
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 190
    :cond_3f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_52

    const/4 p1, 0x0

    .line 191
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/cf;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/cf;->c()Ljava/lang/String;

    move-result-object p1

    goto :goto_56

    .line 193
    :cond_52
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ob/ck;->b(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    :goto_56
    return-object p1
.end method

.method b(Landroid/content/Context;)Ljava/lang/String;
    .registers 12

    .line 56
    new-instance v0, Lcom/yandex/metrica/impl/ob/cj;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/cj;-><init>(Landroid/content/Context;)V

    .line 1290
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/ck;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 1292
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1294
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 1296
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1b
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_7e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/metrica/impl/be$a;

    .line 1297
    iget-object v6, v4, Lcom/yandex/metrica/impl/be$a;->d:Landroid/content/pm/ServiceInfo;

    invoke-static {v6}, Lcom/yandex/metrica/impl/be;->a(Landroid/content/pm/PackageItemInfo;)I

    move-result v6

    const/16 v7, 0x1d

    if-ge v6, v7, :cond_36

    .line 1299
    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 1301
    :cond_36
    iget-object v6, p0, Lcom/yandex/metrica/impl/ob/ck;->a:Lcom/yandex/metrica/impl/ob/ci;

    invoke-virtual {v6}, Lcom/yandex/metrica/impl/ob/ci;->e()Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 2263
    iget-object v6, v4, Lcom/yandex/metrica/impl/be$a;->d:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2264
    iget-object v7, p0, Lcom/yandex/metrica/impl/ob/ck;->a:Lcom/yandex/metrica/impl/ob/ci;

    invoke-virtual {v7, p1, v6}, Lcom/yandex/metrica/impl/ob/ci;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ch;

    move-result-object v7

    .line 2265
    iget-object v8, p0, Lcom/yandex/metrica/impl/ob/ck;->a:Lcom/yandex/metrica/impl/ob/ci;

    invoke-virtual {v8, p1, v6}, Lcom/yandex/metrica/impl/ob/ci;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ch;

    move-result-object v6

    if-nez v7, :cond_55

    if-nez v6, :cond_55

    goto :goto_78

    .line 2269
    :cond_55
    new-instance v5, Lcom/yandex/metrica/impl/ob/cg;

    invoke-direct {v5, v4, v6, v7}, Lcom/yandex/metrica/impl/ob/cg;-><init>(Lcom/yandex/metrica/impl/be$a;Lcom/yandex/metrica/impl/ob/ch;Lcom/yandex/metrica/impl/ob/ch;)V

    goto :goto_78

    .line 2274
    :cond_5b
    iget-object v6, v4, Lcom/yandex/metrica/impl/be$a;->d:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2275
    iget-object v7, p0, Lcom/yandex/metrica/impl/ob/ck;->a:Lcom/yandex/metrica/impl/ob/ci;

    invoke-virtual {v7, p1, v6}, Lcom/yandex/metrica/impl/ob/ci;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ch;

    move-result-object v6

    if-eqz v6, :cond_78

    .line 2277
    invoke-virtual {v6}, Lcom/yandex/metrica/impl/ob/ch;->c()Ljava/lang/String;

    move-result-object v7

    .line 2278
    invoke-static {v7}, Lcom/yandex/metrica/impl/bi;->a(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_78

    .line 2279
    new-instance v5, Lcom/yandex/metrica/impl/ob/ce;

    invoke-direct {v5, v4, v6}, Lcom/yandex/metrica/impl/ob/ce;-><init>(Lcom/yandex/metrica/impl/be$a;Lcom/yandex/metrica/impl/ob/ch;)V

    :cond_78
    :goto_78
    if-eqz v5, :cond_1b

    .line 1303
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 1308
    :cond_7e
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_82
    :goto_82
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ae

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/metrica/impl/be$a;

    .line 1309
    iget-object v4, v3, Lcom/yandex/metrica/impl/be$a;->d:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 1310
    iget-object v6, p0, Lcom/yandex/metrica/impl/ob/ck;->a:Lcom/yandex/metrica/impl/ob/ci;

    invoke-virtual {v6, p1, v4}, Lcom/yandex/metrica/impl/ob/ci;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1311
    invoke-static {v4}, Lcom/yandex/metrica/impl/bi;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_82

    .line 1313
    new-instance v6, Lcom/yandex/metrica/impl/ob/ce;

    new-instance v7, Lcom/yandex/metrica/impl/ob/ch;

    const-wide/16 v8, -0x1

    invoke-direct {v7, v4, v5, v8, v9}, Lcom/yandex/metrica/impl/ob/ch;-><init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/cj;J)V

    invoke-direct {v6, v3, v7}, Lcom/yandex/metrica/impl/ob/ce;-><init>(Lcom/yandex/metrica/impl/be$a;Lcom/yandex/metrica/impl/ob/ch;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_82

    .line 60
    :cond_ae
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_129

    .line 61
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 63
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_bd
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/metrica/impl/ob/ce;

    .line 64
    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/ce;->a()Ljava/lang/String;

    move-result-object v5

    .line 65
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/yandex/metrica/impl/ob/cf;

    if-nez v6, :cond_dd

    .line 68
    new-instance v6, Lcom/yandex/metrica/impl/ob/cf;

    invoke-direct {v6, v5, v0}, Lcom/yandex/metrica/impl/ob/cf;-><init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/cj;)V

    .line 69
    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_dd
    invoke-virtual {v6, v4}, Lcom/yandex/metrica/impl/ob/cf;->a(Lcom/yandex/metrica/impl/ob/ce;)V

    goto :goto_bd

    .line 74
    :cond_e1
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_121

    .line 75
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 76
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_101

    .line 77
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/cf;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/cf;->c()Ljava/lang/String;

    move-result-object p1

    goto :goto_12b

    .line 3231
    :cond_101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Smth wrong when iterate through initial candidates list"

    .line 3233
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "20799a27-fa80-4b36-b2db-0f8141f24180"

    .line 4022
    invoke-static {p1, v1}, Lcom/yandex/metrica/YandexMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/IReporter;

    move-result-object p1

    .line 3238
    new-instance v1, Lcom/yandex/metrica/impl/ob/ck$2;

    invoke-direct {v1, v0}, Lcom/yandex/metrica/impl/ob/ck$2;-><init>(Ljava/lang/StringBuilder;)V

    const-string v0, "multiple_device_ids"

    invoke-interface {p1, v0, v1}, Lcom/yandex/metrica/IReporter;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_129

    .line 83
    :cond_121
    invoke-static {p1, v2}, Lcom/yandex/metrica/impl/ob/ck;->c(Landroid/content/Context;Ljava/util/List;)V

    .line 84
    invoke-direct {p0, p1, v1}, Lcom/yandex/metrica/impl/ob/ck;->a(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    goto :goto_12b

    :cond_129
    :goto_129
    const-string p1, ""

    :goto_12b
    return-object p1
.end method

.method c(Landroid/content/Context;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/be$a;",
            ">;"
        }
    .end annotation

    .line 321
    invoke-static {p1}, Lcom/yandex/metrica/impl/be;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
