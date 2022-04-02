.class final Lcom/truenet/android/TrueNetSDK$a$b;
.super La/a/b/b/i;
.source "StartAppSDK"

# interfaces
.implements La/a/b/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truenet/android/TrueNetSDK$a;->a(Landroid/content/Context;Lcom/truenet/android/LinksData;La/a/b/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/a/b/b/i;",
        "La/a/b/a/b<",
        "Lcom/truenet/android/b;",
        "Ljava/lang/Integer;",
        "La/a/j;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $bulkQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $links:Lcom/truenet/android/LinksData;


# direct methods
.method constructor <init>(Lcom/truenet/android/LinksData;Landroid/content/Context;Ljava/util/concurrent/ConcurrentLinkedQueue;)V
    .registers 4

    iput-object p1, p0, Lcom/truenet/android/TrueNetSDK$a$b;->$links:Lcom/truenet/android/LinksData;

    iput-object p2, p0, Lcom/truenet/android/TrueNetSDK$a$b;->$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/truenet/android/TrueNetSDK$a$b;->$bulkQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, La/a/b/b/i;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 23
    check-cast p1, Lcom/truenet/android/b;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/truenet/android/TrueNetSDK$a$b;->a(Lcom/truenet/android/b;I)V

    sget-object p1, La/a/j;->a:La/a/j;

    return-object p1
.end method

.method public final a(Lcom/truenet/android/b;I)V
    .registers 26

    move-object/from16 v0, p0

    const-string v1, "info"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    invoke-virtual/range {p1 .. p1}, Lcom/truenet/android/b;->d()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 239
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, La/a/a/g;->a(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 240
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 241
    check-cast v4, Lcom/truenet/android/b$b;

    .line 193
    new-instance v11, Lcom/truenet/android/RedirectsResult;

    invoke-virtual {v4}, Lcom/truenet/android/b$b;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/truenet/android/b$b;->b()J

    move-result-wide v7

    invoke-virtual {v4}, Lcom/truenet/android/b$b;->c()I

    move-result v9

    invoke-virtual {v4}, Lcom/truenet/android/b$b;->d()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_41

    goto :goto_45

    .line 194
    :cond_41
    invoke-static {}, La/a/a/g;->a()Ljava/util/List;

    move-result-object v4

    :goto_45
    move-object v10, v4

    move-object v5, v11

    .line 193
    invoke-direct/range {v5 .. v10}, Lcom/truenet/android/RedirectsResult;-><init>(Ljava/lang/String;JILjava/util/List;)V

    .line 194
    invoke-interface {v3, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 242
    :cond_4e
    move-object/from16 v17, v3

    check-cast v17, Ljava/util/List;

    .line 197
    iget-object v1, v0, Lcom/truenet/android/TrueNetSDK$a$b;->$links:Lcom/truenet/android/LinksData;

    invoke-virtual {v1}, Lcom/truenet/android/LinksData;->getValidation()Ljava/util/List;

    move-result-object v1

    move/from16 v3, p2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truenet/android/Link;

    .line 198
    new-instance v3, Lcom/truenet/android/ValidationResult;

    .line 199
    invoke-virtual {v1}, Lcom/truenet/android/Link;->getInstanceId()Ljava/lang/String;

    move-result-object v13

    .line 200
    invoke-virtual/range {p1 .. p1}, Lcom/truenet/android/b;->b()I

    move-result v14

    .line 201
    invoke-virtual/range {p1 .. p1}, Lcom/truenet/android/b;->c()J

    move-result-wide v15

    .line 203
    invoke-virtual/range {p1 .. p1}, Lcom/truenet/android/b;->e()Ljava/lang/String;

    move-result-object v18

    .line 204
    invoke-virtual/range {p1 .. p1}, Lcom/truenet/android/b;->f()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const/4 v6, 0x1

    if-eqz v4, :cond_93

    new-instance v7, Ljava/net/URL;

    invoke-virtual {v1}, Lcom/truenet/android/Link;->getHtmlStorage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/truenet/android/TrueNetSDK$a$b;->$context:Landroid/content/Context;

    invoke-static {v7, v4, v8}, Lcom/truenet/android/a/g;->a(Ljava/net/URL;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v4

    if-ne v4, v6, :cond_93

    invoke-virtual {v1}, Lcom/truenet/android/Link;->getHtmlStorage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v19, v4

    goto :goto_95

    :cond_93
    move-object/from16 v19, v5

    .line 205
    :goto_95
    invoke-virtual/range {p1 .. p1}, Lcom/truenet/android/b;->a()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_ac

    invoke-virtual {v1}, Lcom/truenet/android/Link;->getImageStorage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/truenet/android/a/a;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v6, :cond_ac

    invoke-virtual {v1}, Lcom/truenet/android/Link;->getImageStorage()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v20, v2

    goto :goto_ae

    :cond_ac
    move-object/from16 v20, v5

    .line 206
    :goto_ae
    sget-object v2, Lcom/truenet/android/TrueNetSDK;->Companion:Lcom/truenet/android/TrueNetSDK$a;

    iget-object v4, v0, Lcom/truenet/android/TrueNetSDK$a$b;->$context:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/truenet/android/TrueNetSDK$a;->b(Lcom/truenet/android/TrueNetSDK$a;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    .line 207
    invoke-virtual {v1}, Lcom/truenet/android/Link;->getMetaData()Ljava/lang/String;

    move-result-object v22

    move-object v12, v3

    .line 198
    invoke-direct/range {v12 .. v22}, Lcom/truenet/android/ValidationResult;-><init>(Ljava/lang/String;IJLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v1, v0, Lcom/truenet/android/TrueNetSDK$a$b;->$links:Lcom/truenet/android/LinksData;

    invoke-virtual {v1}, Lcom/truenet/android/LinksData;->getBulkResponse()Z

    move-result v1

    if-eqz v1, :cond_cc

    .line 210
    iget-object v1, v0, Lcom/truenet/android/TrueNetSDK$a$b;->$bulkQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_e7

    .line 212
    :cond_cc
    new-instance v1, Lcom/truenet/android/ValidationResults;

    invoke-static {v3}, La/a/a/g;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/truenet/android/ValidationResults;-><init>(Ljava/util/List;)V

    invoke-static {v1}, Lcom/startapp/common/c/b;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-static {}, Lcom/truenet/android/TrueNetSDK;->access$getResultUrl$cp()Ljava/net/URL;

    move-result-object v2

    const-string v3, "json"

    invoke-static {v1, v3}, La/a/b/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/truenet/android/TrueNetSDK$a$b;->$context:Landroid/content/Context;

    invoke-static {v2, v1, v3}, Lcom/truenet/android/a/g;->b(Ljava/net/URL;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    :goto_e7
    return-void
.end method
