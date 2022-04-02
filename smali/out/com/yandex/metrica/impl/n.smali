.class public Lcom/yandex/metrica/impl/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Integer;

.field private b:Ljava/lang/Boolean;

.field private c:Ljava/lang/Boolean;

.field private d:Landroid/location/Location;

.field private e:Ljava/lang/Boolean;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/Boolean;

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/n;->h:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/n;->i:Ljava/util/Map;

    return-void
.end method

.method private static a(Ljava/util/Map;Lcom/yandex/metrica/e$a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yandex/metrica/e$a;",
            ")V"
        }
    .end annotation

    .line 218
    invoke-static {p0}, Lcom/yandex/metrica/impl/bk;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 219
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 220
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/e$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/e$a;

    goto :goto_e

    :cond_2a
    return-void
.end method

.method private static b(Ljava/util/Map;Lcom/yandex/metrica/e$a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yandex/metrica/e$a;",
            ")V"
        }
    .end annotation

    .line 226
    invoke-static {p0}, Lcom/yandex/metrica/impl/bk;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 227
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 228
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/e$a;

    goto :goto_e

    :cond_2a
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/e;)Lcom/yandex/metrica/e;
    .registers 7

    .line 152
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/n;->k:Z

    if-eqz v0, :cond_5

    return-object p1

    .line 1165
    :cond_5
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->getApiKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/e;->a(Ljava/lang/String;)Lcom/yandex/metrica/e$a;

    move-result-object v0

    .line 1166
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->f()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yandex/metrica/e;->k()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/e$a;->a(Ljava/util/Map;Ljava/lang/Boolean;)Lcom/yandex/metrica/e$a;

    .line 1167
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->e()Lcom/yandex/metrica/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/e$a;->a(Lcom/yandex/metrica/a;)Lcom/yandex/metrica/e$a;

    .line 1168
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->getPreloadInfo()Lcom/yandex/metrica/PreloadInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/e$a;->a(Lcom/yandex/metrica/PreloadInfo;)Lcom/yandex/metrica/e$a;

    .line 1169
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/e$a;->c(Ljava/lang/String;)Lcom/yandex/metrica/e$a;

    .line 1170
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->getLocation()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/e$a;->a(Landroid/location/Location;)Lcom/yandex/metrica/e$a;

    .line 1172
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->c()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3e

    const/4 v1, 0x1

    goto :goto_3f

    :cond_3e
    const/4 v1, 0x0

    :goto_3f
    if-eqz v1, :cond_48

    .line 1173
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/e$a;->a(Ljava/util/List;)Lcom/yandex/metrica/e$a;

    .line 1175
    :cond_48
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_50

    const/4 v1, 0x1

    goto :goto_51

    :cond_50
    const/4 v1, 0x0

    :goto_51
    if-eqz v1, :cond_5a

    .line 1176
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/e$a;->a(Ljava/lang/String;)Lcom/yandex/metrica/e$a;

    .line 1178
    :cond_5a
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->i()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_62

    const/4 v1, 0x1

    goto :goto_63

    :cond_62
    const/4 v1, 0x0

    :goto_63
    if-eqz v1, :cond_70

    .line 1179
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->i()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/e$a;->d(I)Lcom/yandex/metrica/e$a;

    .line 1181
    :cond_70
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->d()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_78

    const/4 v1, 0x1

    goto :goto_79

    :cond_78
    const/4 v1, 0x0

    :goto_79
    if-eqz v1, :cond_86

    .line 1182
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->d()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/e$a;->b(I)Lcom/yandex/metrica/e$a;

    .line 1184
    :cond_86
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->h()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_8e

    const/4 v1, 0x1

    goto :goto_8f

    :cond_8e
    const/4 v1, 0x0

    :goto_8f
    if-eqz v1, :cond_9c

    .line 1185
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->h()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/e$a;->c(I)Lcom/yandex/metrica/e$a;

    .line 1187
    :cond_9c
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->isLogEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_a4

    const/4 v1, 0x1

    goto :goto_a5

    :cond_a4
    const/4 v1, 0x0

    :goto_a5
    if-eqz v1, :cond_b4

    invoke-virtual {p1}, Lcom/yandex/metrica/e;->isLogEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b4

    .line 1188
    invoke-virtual {v0}, Lcom/yandex/metrica/e$a;->a()Lcom/yandex/metrica/e$a;

    .line 1190
    :cond_b4
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->getSessionTimeout()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_bc

    const/4 v1, 0x1

    goto :goto_bd

    :cond_bc
    const/4 v1, 0x0

    :goto_bd
    if-eqz v1, :cond_ca

    .line 1191
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->getSessionTimeout()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/e$a;->a(I)Lcom/yandex/metrica/e$a;

    .line 1193
    :cond_ca
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->isReportCrashEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_d2

    const/4 v1, 0x1

    goto :goto_d3

    :cond_d2
    const/4 v1, 0x0

    :goto_d3
    if-eqz v1, :cond_e0

    .line 1194
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->isReportCrashEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/e$a;->a(Z)Lcom/yandex/metrica/e$a;

    .line 1196
    :cond_e0
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->isReportNativeCrashEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_e8

    const/4 v1, 0x1

    goto :goto_e9

    :cond_e8
    const/4 v1, 0x0

    :goto_e9
    if-eqz v1, :cond_f6

    .line 1197
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->isReportNativeCrashEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/e$a;->b(Z)Lcom/yandex/metrica/e$a;

    .line 1199
    :cond_f6
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->isTrackLocationEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_fe

    const/4 v1, 0x1

    goto :goto_ff

    :cond_fe
    const/4 v1, 0x0

    :goto_ff
    if-eqz v1, :cond_10c

    .line 1200
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->isTrackLocationEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/e$a;->c(Z)Lcom/yandex/metrica/e$a;

    .line 1202
    :cond_10c
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->isCollectInstalledApps()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_114

    const/4 v1, 0x1

    goto :goto_115

    :cond_114
    const/4 v1, 0x0

    :goto_115
    if-eqz v1, :cond_122

    .line 1203
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->isCollectInstalledApps()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/e$a;->d(Z)Lcom/yandex/metrica/e$a;

    .line 1205
    :cond_122
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12a

    const/4 v1, 0x1

    goto :goto_12b

    :cond_12a
    const/4 v1, 0x0

    :goto_12b
    if-eqz v1, :cond_134

    .line 1206
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/e$a;->b(Ljava/lang/String;)Lcom/yandex/metrica/e$a;

    .line 1208
    :cond_134
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->isFirstActivationAsUpdate()Z

    move-result v1

    if-eqz v1, :cond_13d

    .line 1209
    invoke-virtual {v0, v3}, Lcom/yandex/metrica/e$a;->e(Z)Lcom/yandex/metrica/e$a;

    .line 1211
    :cond_13d
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->j()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/yandex/metrica/impl/n;->a(Ljava/util/Map;Lcom/yandex/metrica/e$a;)V

    .line 1212
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->getErrorEnvironment()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/yandex/metrica/impl/n;->b(Ljava/util/Map;Lcom/yandex/metrica/e$a;)V

    .line 13234
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/n;->a()Ljava/lang/Integer;

    move-result-object v1

    .line 13235
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->getSessionTimeout()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_157

    const/4 v4, 0x1

    goto :goto_158

    :cond_157
    const/4 v4, 0x0

    :goto_158
    if-eqz v4, :cond_168

    if-eqz v1, :cond_15e

    const/4 v4, 0x1

    goto :goto_15f

    :cond_15e
    const/4 v4, 0x0

    :goto_15f
    if-eqz v4, :cond_168

    .line 13236
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/e$a;->a(I)Lcom/yandex/metrica/e$a;

    .line 13238
    :cond_168
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/n;->b()Ljava/lang/Boolean;

    move-result-object v1

    .line 13239
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->isReportCrashEnabled()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_174

    const/4 v4, 0x1

    goto :goto_175

    :cond_174
    const/4 v4, 0x0

    :goto_175
    if-eqz v4, :cond_185

    if-eqz v1, :cond_17b

    const/4 v4, 0x1

    goto :goto_17c

    :cond_17b
    const/4 v4, 0x0

    :goto_17c
    if-eqz v4, :cond_185

    .line 13240
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/e$a;->a(Z)Lcom/yandex/metrica/e$a;

    .line 13242
    :cond_185
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/n;->c()Ljava/lang/Boolean;

    move-result-object v1

    .line 13243
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->isReportNativeCrashEnabled()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_191

    const/4 v4, 0x1

    goto :goto_192

    :cond_191
    const/4 v4, 0x0

    :goto_192
    if-eqz v4, :cond_1a2

    if-eqz v1, :cond_198

    const/4 v4, 0x1

    goto :goto_199

    :cond_198
    const/4 v4, 0x0

    :goto_199
    if-eqz v4, :cond_1a2

    .line 13244
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/e$a;->b(Z)Lcom/yandex/metrica/e$a;

    .line 13246
    :cond_1a2
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/n;->e()Ljava/lang/Boolean;

    move-result-object v1

    .line 13247
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->isTrackLocationEnabled()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_1ae

    const/4 v4, 0x1

    goto :goto_1af

    :cond_1ae
    const/4 v4, 0x0

    :goto_1af
    if-eqz v4, :cond_1bf

    if-eqz v1, :cond_1b5

    const/4 v4, 0x1

    goto :goto_1b6

    :cond_1b5
    const/4 v4, 0x0

    :goto_1b6
    if-eqz v4, :cond_1bf

    .line 13248
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/e$a;->c(Z)Lcom/yandex/metrica/e$a;

    .line 13250
    :cond_1bf
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/n;->d()Landroid/location/Location;

    move-result-object v1

    .line 13251
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->getLocation()Landroid/location/Location;

    move-result-object v4

    if-nez v4, :cond_1cb

    const/4 v4, 0x1

    goto :goto_1cc

    :cond_1cb
    const/4 v4, 0x0

    :goto_1cc
    if-eqz v4, :cond_1d8

    if-eqz v1, :cond_1d2

    const/4 v4, 0x1

    goto :goto_1d3

    :cond_1d2
    const/4 v4, 0x0

    :goto_1d3
    if-eqz v4, :cond_1d8

    .line 13252
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/e$a;->a(Landroid/location/Location;)Lcom/yandex/metrica/e$a;

    .line 13254
    :cond_1d8
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/n;->g()Ljava/lang/Boolean;

    move-result-object v1

    .line 13255
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->isCollectInstalledApps()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_1e4

    const/4 v4, 0x1

    goto :goto_1e5

    :cond_1e4
    const/4 v4, 0x0

    :goto_1e5
    if-eqz v4, :cond_1f5

    if-eqz v1, :cond_1eb

    const/4 v4, 0x1

    goto :goto_1ec

    :cond_1eb
    const/4 v4, 0x0

    :goto_1ec
    if-eqz v4, :cond_1f5

    .line 13256
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/e$a;->d(Z)Lcom/yandex/metrica/e$a;

    .line 13258
    :cond_1f5
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/n;->f()Ljava/lang/String;

    move-result-object v1

    .line 13259
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->getAppVersion()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_201

    const/4 p1, 0x1

    goto :goto_202

    :cond_201
    const/4 p1, 0x0

    :goto_202
    if-eqz p1, :cond_20e

    if-eqz v1, :cond_208

    const/4 p1, 0x1

    goto :goto_209

    :cond_208
    const/4 p1, 0x0

    :goto_209
    if-eqz p1, :cond_20e

    .line 13260
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/e$a;->a(Ljava/lang/String;)Lcom/yandex/metrica/e$a;

    .line 13262
    :cond_20e
    iget-object p1, p0, Lcom/yandex/metrica/impl/n;->h:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/n;->a(Ljava/util/Map;Lcom/yandex/metrica/e$a;)V

    .line 13263
    iget-object p1, p0, Lcom/yandex/metrica/impl/n;->i:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/n;->b(Ljava/util/Map;Lcom/yandex/metrica/e$a;)V

    .line 158
    iput-boolean v3, p0, Lcom/yandex/metrica/impl/n;->k:Z

    const/4 p1, 0x0

    .line 20138
    iput-object p1, p0, Lcom/yandex/metrica/impl/n;->a:Ljava/lang/Integer;

    .line 20139
    iput-object p1, p0, Lcom/yandex/metrica/impl/n;->b:Ljava/lang/Boolean;

    .line 20140
    iput-object p1, p0, Lcom/yandex/metrica/impl/n;->c:Ljava/lang/Boolean;

    .line 20141
    iput-object p1, p0, Lcom/yandex/metrica/impl/n;->d:Landroid/location/Location;

    .line 20142
    iput-object p1, p0, Lcom/yandex/metrica/impl/n;->e:Ljava/lang/Boolean;

    .line 20143
    iput-object p1, p0, Lcom/yandex/metrica/impl/n;->f:Ljava/lang/String;

    .line 20144
    iput-object p1, p0, Lcom/yandex/metrica/impl/n;->g:Ljava/lang/Boolean;

    .line 20145
    iget-object p1, p0, Lcom/yandex/metrica/impl/n;->h:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 20146
    iget-object p1, p0, Lcom/yandex/metrica/impl/n;->i:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 20148
    iput-boolean v2, p0, Lcom/yandex/metrica/impl/n;->j:Z

    .line 160
    invoke-virtual {v0}, Lcom/yandex/metrica/e$a;->b()Lcom/yandex/metrica/e;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/Integer;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/yandex/metrica/impl/n;->a:Ljava/lang/Integer;

    return-object v0
.end method

.method public b()Ljava/lang/Boolean;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/yandex/metrica/impl/n;->b:Ljava/lang/Boolean;

    return-object v0
.end method

.method public c()Ljava/lang/Boolean;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/yandex/metrica/impl/n;->c:Ljava/lang/Boolean;

    return-object v0
.end method

.method public c(Z)V
    .registers 2

    .line 104
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/n;->b:Ljava/lang/Boolean;

    return-void
.end method

.method public d()Landroid/location/Location;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/yandex/metrica/impl/n;->d:Landroid/location/Location;

    return-object v0
.end method

.method public e()Ljava/lang/Boolean;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/yandex/metrica/impl/n;->e:Ljava/lang/Boolean;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/yandex/metrica/impl/n;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/Boolean;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/yandex/metrica/impl/n;->g:Ljava/lang/Boolean;

    return-object v0
.end method

.method public i()Z
    .registers 2

    .line 129
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/n;->j:Z

    return v0
.end method
