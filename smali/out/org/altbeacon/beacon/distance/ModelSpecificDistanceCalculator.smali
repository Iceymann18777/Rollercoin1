.class public Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;
.super Ljava/lang/Object;
.source "ModelSpecificDistanceCalculator.java"

# interfaces
.implements Lorg/altbeacon/beacon/distance/DistanceCalculator;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultModel:Lorg/altbeacon/beacon/distance/AndroidModel;

.field private mDistanceCalculator:Lorg/altbeacon/beacon/distance/DistanceCalculator;

.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mModel:Lorg/altbeacon/beacon/distance/AndroidModel;

.field mModelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/altbeacon/beacon/distance/AndroidModel;",
            "Lorg/altbeacon/beacon/distance/DistanceCalculator;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteUpdateUrlString:Ljava/lang/String;

.field private mRequestedModel:Lorg/altbeacon/beacon/distance/AndroidModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 64
    invoke-static {}, Lorg/altbeacon/beacon/distance/AndroidModel;->forThisDevice()Lorg/altbeacon/beacon/distance/AndroidModel;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/altbeacon/beacon/distance/AndroidModel;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lorg/altbeacon/beacon/distance/AndroidModel;)V
    .registers 5

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mRemoteUpdateUrlString:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 72
    iput-object p3, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mRequestedModel:Lorg/altbeacon/beacon/distance/AndroidModel;

    .line 73
    iput-object p2, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mRemoteUpdateUrlString:Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mContext:Landroid/content/Context;

    .line 75
    invoke-direct {p0}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->loadModelMap()V

    .line 76
    invoke-virtual {p0, p3}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->findCalculatorForModelWithLock(Lorg/altbeacon/beacon/distance/AndroidModel;)Lorg/altbeacon/beacon/distance/DistanceCalculator;

    move-result-object p1

    iput-object p1, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mDistanceCalculator:Lorg/altbeacon/beacon/distance/DistanceCalculator;

    return-void
.end method

.method static synthetic access$000(Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;)Ljava/lang/String;
    .registers 1

    .line 47
    iget-object p0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mRemoteUpdateUrlString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;Ljava/lang/String;)Z
    .registers 2

    .line 47
    invoke-direct {p0, p1}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->saveJson(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;)Z
    .registers 1

    .line 47
    invoke-direct {p0}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->loadModelMapFromFile()Z

    move-result p0

    return p0
.end method

.method static synthetic access$302(Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;Lorg/altbeacon/beacon/distance/DistanceCalculator;)Lorg/altbeacon/beacon/distance/DistanceCalculator;
    .registers 2

    .line 47
    iput-object p1, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mDistanceCalculator:Lorg/altbeacon/beacon/distance/DistanceCalculator;

    return-object p1
.end method

.method static synthetic access$400(Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;)Lorg/altbeacon/beacon/distance/AndroidModel;
    .registers 1

    .line 47
    iget-object p0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mRequestedModel:Lorg/altbeacon/beacon/distance/AndroidModel;

    return-object p0
.end method

.method private buildModelMap(Ljava/lang/String;)V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 272
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 273
    new-instance v2, Lorg/json/JSONObject;

    move-object/from16 v3, p1

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "models"

    .line 274
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 275
    :goto_16
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_89

    .line 276
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "default"

    .line 278
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2d

    .line 279
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    goto :goto_2e

    :cond_2d
    const/4 v6, 0x0

    :goto_2e
    const-string v7, "coefficient1"

    .line 281
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    const-string v8, "coefficient2"

    .line 282
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    const-string v9, "coefficient3"

    .line 283
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    const-string v10, "version"

    .line 284
    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "build_number"

    .line 285
    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "model"

    .line 286
    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "manufacturer"

    .line 287
    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 289
    new-instance v14, Lorg/altbeacon/beacon/distance/CurveFittedDistanceCalculator;

    .line 290
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v15

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    move-object v13, v14

    move-object v9, v14

    move-wide v14, v15

    move-wide/from16 v16, v7

    invoke-direct/range {v13 .. v19}, Lorg/altbeacon/beacon/distance/CurveFittedDistanceCalculator;-><init>(DDD)V

    .line 292
    new-instance v7, Lorg/altbeacon/beacon/distance/AndroidModel;

    invoke-direct {v7, v10, v11, v12, v5}, Lorg/altbeacon/beacon/distance/AndroidModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-virtual {v1, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_86

    .line 295
    iput-object v7, v0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mDefaultModel:Lorg/altbeacon/beacon/distance/AndroidModel;

    :cond_86
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 298
    :cond_89
    iput-object v1, v0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mModelMap:Ljava/util/Map;

    return-void
.end method

.method private findCalculatorForModel(Lorg/altbeacon/beacon/distance/AndroidModel;)Lorg/altbeacon/beacon/distance/DistanceCalculator;
    .registers 14

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Object;

    .line 113
    invoke-virtual {p1}, Lorg/altbeacon/beacon/distance/AndroidModel;->getVersion()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lorg/altbeacon/beacon/distance/AndroidModel;->getBuildNumber()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {p1}, Lorg/altbeacon/beacon/distance/AndroidModel;->getModel()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 114
    invoke-virtual {p1}, Lorg/altbeacon/beacon/distance/AndroidModel;->getManufacturer()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "ModelSpecificDistanceCalculator"

    const-string v7, "Finding best distance calculator for %s, %s, %s, %s"

    .line 112
    invoke-static {v2, v7, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    iget-object v1, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mModelMap:Ljava/util/Map;

    const/4 v8, 0x0

    if-nez v1, :cond_33

    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "Cannot get distance calculator because modelMap was never initialized"

    .line 117
    invoke-static {v2, v0, p1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v8

    .line 123
    :cond_33
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v9, 0x0

    :cond_3c
    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/altbeacon/beacon/distance/AndroidModel;

    .line 124
    invoke-virtual {v10, p1}, Lorg/altbeacon/beacon/distance/AndroidModel;->matchScore(Lorg/altbeacon/beacon/distance/AndroidModel;)I

    move-result v11

    if-le v11, v9, :cond_3c

    .line 125
    invoke-virtual {v10, p1}, Lorg/altbeacon/beacon/distance/AndroidModel;->matchScore(Lorg/altbeacon/beacon/distance/AndroidModel;)I

    move-result v9

    move-object v8, v10

    goto :goto_3c

    :cond_54
    if-eqz v8, :cond_83

    new-array p1, v4, [Ljava/lang/Object;

    .line 130
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v3

    const-string v1, "found a match with score %s"

    invoke-static {v2, v1, p1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array p1, v0, [Ljava/lang/Object;

    .line 132
    invoke-virtual {v8}, Lorg/altbeacon/beacon/distance/AndroidModel;->getVersion()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    invoke-virtual {v8}, Lorg/altbeacon/beacon/distance/AndroidModel;->getBuildNumber()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v4

    .line 133
    invoke-virtual {v8}, Lorg/altbeacon/beacon/distance/AndroidModel;->getModel()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v5

    invoke-virtual {v8}, Lorg/altbeacon/beacon/distance/AndroidModel;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v6

    .line 131
    invoke-static {v2, v7, p1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    iput-object v8, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mModel:Lorg/altbeacon/beacon/distance/AndroidModel;

    goto :goto_8e

    .line 136
    :cond_83
    iget-object p1, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mDefaultModel:Lorg/altbeacon/beacon/distance/AndroidModel;

    iput-object p1, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mModel:Lorg/altbeacon/beacon/distance/AndroidModel;

    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "Cannot find match for this device.  Using default"

    .line 137
    invoke-static {v2, v0, p1}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    :goto_8e
    iget-object p1, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mModelMap:Ljava/util/Map;

    iget-object v0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mModel:Lorg/altbeacon/beacon/distance/AndroidModel;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/altbeacon/beacon/distance/DistanceCalculator;

    return-object p1
.end method

.method private loadDefaultModelMap()V
    .registers 5

    :try_start_0
    const-string v0, "model-distance-calculations.json"

    .line 303
    invoke-direct {p0, v0}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->stringFromFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->buildModelMap(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_1c

    :catch_a
    move-exception v0

    .line 306
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mModelMap:Ljava/util/Map;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ModelSpecificDistanceCalculator"

    const-string v3, "Cannot build model distance calculations"

    .line 307
    invoke-static {v0, v2, v3, v1}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1c
    return-void
.end method

.method private loadModelMap()V
    .registers 2

    .line 144
    iget-object v0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mRemoteUpdateUrlString:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 145
    invoke-direct {p0}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->loadModelMapFromFile()Z

    move-result v0

    if-nez v0, :cond_f

    .line 150
    invoke-direct {p0}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->requestModelMapFromWeb()V

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :cond_f
    :goto_f
    if-nez v0, :cond_14

    .line 154
    invoke-direct {p0}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->loadDefaultModelMap()V

    .line 156
    :cond_14
    iget-object v0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mRequestedModel:Lorg/altbeacon/beacon/distance/AndroidModel;

    invoke-virtual {p0, v0}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->findCalculatorForModelWithLock(Lorg/altbeacon/beacon/distance/AndroidModel;)Lorg/altbeacon/beacon/distance/DistanceCalculator;

    move-result-object v0

    iput-object v0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mDistanceCalculator:Lorg/altbeacon/beacon/distance/DistanceCalculator;

    return-void
.end method

.method private loadModelMapFromFile()Z
    .registers 10

    const-string v0, "ModelSpecificDistanceCalculator"

    .line 160
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "model-distance-calculations.json"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 165
    :try_start_17
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_1c} :catch_8d
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1c} :catch_68
    .catchall {:try_start_17 .. :try_end_1c} :catchall_65

    .line 166
    :try_start_1c
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_26
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_26} :catch_63
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_26} :catch_61
    .catchall {:try_start_1c .. :try_end_26} :catchall_5f

    .line 168
    :goto_26
    :try_start_26
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 169
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_34
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_34} :catch_5d
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_34} :catch_5a
    .catchall {:try_start_26 .. :try_end_34} :catchall_57

    goto :goto_26

    .line 182
    :cond_35
    :try_start_35
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_38

    .line 185
    :catch_38
    :try_start_38
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_3b

    .line 189
    :catch_3b
    :try_start_3b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->buildModelMapWithLock(Ljava/lang/String;)V
    :try_end_42
    .catch Lorg/json/JSONException; {:try_start_3b .. :try_end_42} :catch_43

    return v4

    :catch_43
    move-exception v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 192
    iget-object v6, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mRemoteUpdateUrlString:Ljava/lang/String;

    aput-object v6, v3, v5

    .line 196
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    const-string v2, "Cannot update distance models from online database at %s with JSON: %s"

    .line 192
    invoke-static {v1, v0, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    :catchall_57
    move-exception v0

    move-object v3, v7

    goto :goto_80

    :catch_5a
    move-exception v2

    move-object v3, v7

    goto :goto_6a

    :catch_5d
    move-object v3, v7

    goto :goto_8e

    :catchall_5f
    move-exception v0

    goto :goto_80

    :catch_61
    move-exception v2

    goto :goto_6a

    :catch_63
    nop

    goto :goto_8e

    :catchall_65
    move-exception v0

    move-object v6, v3

    goto :goto_80

    :catch_68
    move-exception v2

    move-object v6, v3

    :goto_6a
    :try_start_6a
    const-string v7, "Cannot open distance model file %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    .line 177
    invoke-static {v2, v0, v7, v4}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_73
    .catchall {:try_start_6a .. :try_end_73} :catchall_5f

    if-eqz v3, :cond_7a

    .line 182
    :try_start_75
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_78} :catch_79

    goto :goto_7a

    :catch_79
    nop

    :cond_7a
    :goto_7a
    if-eqz v6, :cond_7f

    .line 185
    :try_start_7c
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_7f} :catch_7f

    :catch_7f
    :cond_7f
    return v5

    :goto_80
    if-eqz v3, :cond_87

    .line 182
    :try_start_82
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_85} :catch_86

    goto :goto_87

    :catch_86
    nop

    :cond_87
    :goto_87
    if-eqz v6, :cond_8c

    .line 185
    :try_start_89
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_8c} :catch_8c

    .line 187
    :catch_8c
    :cond_8c
    throw v0

    :catch_8d
    move-object v6, v3

    :goto_8e
    if-eqz v3, :cond_95

    .line 182
    :try_start_90
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_93} :catch_94

    goto :goto_95

    :catch_94
    nop

    :cond_95
    :goto_95
    if-eqz v6, :cond_9a

    .line 185
    :try_start_97
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_9a} :catch_9a

    :catch_9a
    :cond_9a
    return v5
.end method

.method private requestModelMapFromWeb()V
    .registers 6

    .line 227
    iget-object v0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "ModelSpecificDistanceCalculator"

    const-string v2, "App has no android.permission.INTERNET permission.  Cannot check for distance model updates"

    .line 228
    invoke-static {v1, v2, v0}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 232
    :cond_15
    new-instance v0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceUpdater;

    iget-object v2, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mRemoteUpdateUrlString:Ljava/lang/String;

    new-instance v4, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator$1;

    invoke-direct {v4, p0}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator$1;-><init>(Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;)V

    invoke-direct {v0, v2, v3, v4}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceUpdater;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/altbeacon/beacon/distance/ModelSpecificDistanceUpdater$CompletionHandler;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v1, [Ljava/lang/Void;

    .line 259
    invoke-virtual {v0, v2, v1}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceUpdater;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private saveJson(Ljava/lang/String;)Z
    .registers 7

    const-string v0, "ModelSpecificDistanceCalculator"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 207
    :try_start_4
    iget-object v3, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mContext:Landroid/content/Context;

    const-string v4, "model-distance-calculations.json"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 208
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 209
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_16} :catch_26
    .catchall {:try_start_4 .. :try_end_16} :catchall_24

    if-eqz v2, :cond_1b

    .line 216
    :try_start_18
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_1b

    :catch_1b
    :cond_1b
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "Successfully saved new distance model file"

    .line 220
    invoke-static {v0, v1, p1}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :catchall_24
    move-exception p1

    goto :goto_34

    :catch_26
    move-exception p1

    :try_start_27
    const-string v3, "Cannot write updated distance model to local storage"

    new-array v4, v1, [Ljava/lang/Object;

    .line 211
    invoke-static {p1, v0, v3, v4}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_24

    if-eqz v2, :cond_33

    .line 216
    :try_start_30
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_33

    :catch_33
    :cond_33
    return v1

    :goto_34
    if-eqz v2, :cond_39

    :try_start_36
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_39

    .line 219
    :catch_39
    :cond_39
    throw p1
.end method

.method private stringFromFilePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "/"

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 316
    :try_start_8
    const-class v3, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_86

    if-nez v3, :cond_3d

    .line 318
    :try_start_1f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    goto :goto_3d

    :catchall_3b
    move-exception p1

    goto :goto_88

    :cond_3d
    :goto_3d
    if-eqz v3, :cond_6f

    .line 324
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v0, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4b
    .catchall {:try_start_1f .. :try_end_4b} :catchall_3b

    .line 325
    :try_start_4b
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    :goto_4f
    if-eqz v0, :cond_5e

    .line 327
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_5d
    .catchall {:try_start_4b .. :try_end_5d} :catchall_6b

    goto :goto_4f

    .line 333
    :cond_5e
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    if-eqz v3, :cond_66

    .line 336
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 339
    :cond_66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_6b
    move-exception v0

    move-object v2, p1

    move-object p1, v0

    goto :goto_88

    .line 322
    :cond_6f
    :try_start_6f
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot load resource at "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_86
    .catchall {:try_start_6f .. :try_end_86} :catchall_3b

    :catchall_86
    move-exception p1

    move-object v3, v2

    :goto_88
    if-eqz v2, :cond_8d

    .line 333
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :cond_8d
    if-eqz v3, :cond_92

    .line 336
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 338
    :cond_92
    goto :goto_94

    :goto_93
    throw p1

    :goto_94
    goto :goto_93
.end method


# virtual methods
.method buildModelMapWithLock(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 265
    :try_start_5
    invoke-direct {p0, p1}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->buildModelMap(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_e

    .line 267
    iget-object p1, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_e
    move-exception p1

    iget-object v0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 268
    throw p1
.end method

.method public calculateDistance(ID)D
    .registers 5

    .line 95
    iget-object v0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mDistanceCalculator:Lorg/altbeacon/beacon/distance/DistanceCalculator;

    if-nez v0, :cond_11

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "ModelSpecificDistanceCalculator"

    const-string p3, "distance calculator has not been set"

    .line 96
    invoke-static {p2, p3, p1}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    return-wide p1

    .line 99
    :cond_11
    invoke-interface {v0, p1, p2, p3}, Lorg/altbeacon/beacon/distance/DistanceCalculator;->calculateDistance(ID)D

    move-result-wide p1

    return-wide p1
.end method

.method findCalculatorForModelWithLock(Lorg/altbeacon/beacon/distance/AndroidModel;)Lorg/altbeacon/beacon/distance/DistanceCalculator;
    .registers 3

    .line 103
    iget-object v0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 105
    :try_start_5
    invoke-direct {p0, p1}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->findCalculatorForModel(Lorg/altbeacon/beacon/distance/AndroidModel;)Lorg/altbeacon/beacon/distance/DistanceCalculator;

    move-result-object p1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_f

    .line 107
    iget-object v0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_f
    move-exception p1

    iget-object v0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 108
    throw p1
.end method
