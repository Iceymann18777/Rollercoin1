.class Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;
.super Ljava/lang/Object;
.source "CachedContentIndex.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;,
        Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;,
        Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;
    }
.end annotation


# instance fields
.field private final idToKey:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final keyToContent:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/upstream/cache/CachedContent;",
            ">;"
        }
    .end annotation
.end field

.field private final newIds:Landroid/util/SparseBooleanArray;

.field private previousStorage:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;

.field private final removedIds:Landroid/util/SparseBooleanArray;

.field private storage:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/database/DatabaseProvider;Ljava/io/File;[BZZ)V
    .registers 9

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_a

    if-eqz p2, :cond_8

    goto :goto_a

    :cond_8
    const/4 v0, 0x0

    goto :goto_b

    :cond_a
    :goto_a
    const/4 v0, 0x1

    .line 155
    :goto_b
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->keyToContent:Ljava/util/HashMap;

    .line 157
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->idToKey:Landroid/util/SparseArray;

    .line 158
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->removedIds:Landroid/util/SparseBooleanArray;

    .line 159
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->newIds:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    if-eqz p1, :cond_33

    .line 160
    new-instance v1, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;-><init>(Lcom/google/android/exoplayer2/database/DatabaseProvider;)V

    goto :goto_34

    :cond_33
    move-object v1, v0

    :goto_34
    if-eqz p2, :cond_42

    .line 162
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;

    new-instance p1, Ljava/io/File;

    const-string v2, "cached_content_index.exi"

    invoke-direct {p1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, p1, p3, p4}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;-><init>(Ljava/io/File;[BZ)V

    :cond_42
    if-eqz v1, :cond_4e

    if-eqz v0, :cond_49

    if-eqz p5, :cond_49

    goto :goto_4e

    .line 173
    :cond_49
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->storage:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;

    .line 174
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->previousStorage:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;

    goto :goto_52

    .line 170
    :cond_4e
    :goto_4e
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->storage:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;

    .line 171
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->previousStorage:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;

    :goto_52
    return-void
.end method

.method static synthetic access$000()Ljavax/crypto/Cipher;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 63
    invoke-static {}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/io/DataInputStream;)Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-static {p0}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->readContentMetadata(Ljava/io/DataInputStream;)Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;Ljava/io/DataOutputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->writeContentMetadata(Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;Ljava/io/DataOutputStream;)V

    return-void
.end method

.method private addNew(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/CachedContent;
    .registers 5

    .line 320
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->idToKey:Landroid/util/SparseArray;

    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->getNewId(Landroid/util/SparseArray;)I

    move-result v0

    .line 321
    new-instance v1, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;-><init>(ILjava/lang/String;)V

    .line 322
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->keyToContent:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->idToKey:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 324
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->newIds:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 325
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->storage:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;->onUpdate(Lcom/google/android/exoplayer2/upstream/cache/CachedContent;)V

    return-object v1
.end method

.method private static getCipher()Ljavax/crypto/Cipher;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 332
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const-string v1, "AES/CBC/PKCS5PADDING"

    const/16 v2, 0x12

    if-ne v0, v2, :cond_f

    :try_start_8
    const-string v0, "BC"

    .line 334
    invoke-static {v1, v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_f

    return-object v0

    .line 339
    :catchall_f
    :cond_f
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method static getNewId(Landroid/util/SparseArray;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 349
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v2, 0x0

    goto :goto_11

    :cond_9
    add-int/lit8 v2, v0, -0x1

    .line 350
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    :goto_11
    if-gez v2, :cond_20

    :goto_13
    if-ge v1, v0, :cond_1f

    .line 354
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    if-eq v1, v2, :cond_1c

    goto :goto_1f

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_1f
    :goto_1f
    move v2, v1

    :cond_20
    return v2
.end method

.method public static isIndexFile(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "cached_content_index.exi"

    .line 102
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static readContentMetadata(Ljava/io/DataInputStream;)Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 371
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 372
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v0, :cond_50

    .line 374
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    .line 375
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    if-ltz v5, :cond_39

    const/high16 v6, 0xa00000

    .line 383
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 384
    sget-object v8, Lcom/google/android/exoplayer2/util/Util;->EMPTY_BYTE_ARRAY:[B

    const/4 v9, 0x0

    :goto_20
    if-eq v9, v5, :cond_33

    add-int v10, v9, v7

    .line 386
    invoke-static {v8, v10}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v8

    .line 387
    invoke-virtual {p0, v8, v9, v7}, Ljava/io/DataInputStream;->readFully([BII)V

    sub-int v7, v5, v10

    .line 389
    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v9, v10

    goto :goto_20

    .line 391
    :cond_33
    invoke-virtual {v1, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 377
    :cond_39
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid value size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 393
    :cond_50
    new-instance p0, Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method private static writeContentMetadata(Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;Ljava/io/DataOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 404
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 405
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 406
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 407
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 408
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 409
    array-length v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 410
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_f

    :cond_32
    return-void
.end method


# virtual methods
.method public applyContentMetadataMutations(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;)V
    .registers 3

    .line 307
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->getOrAdd(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    move-result-object p1

    .line 308
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->applyMetadataMutations(Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 309
    iget-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->storage:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;

    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;->onUpdate(Lcom/google/android/exoplayer2/upstream/cache/CachedContent;)V

    :cond_f
    return-void
.end method

.method public assignIdForKey(Ljava/lang/String;)I
    .registers 2

    .line 254
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->getOrAdd(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    move-result-object p1

    iget p1, p1, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->id:I

    return p1
.end method

.method public get(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/CachedContent;
    .registers 3

    .line 238
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->keyToContent:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    return-object p1
.end method

.method public getAll()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/google/android/exoplayer2/upstream/cache/CachedContent;",
            ">;"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->keyToContent:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getContentMetadata(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;
    .registers 2

    .line 315
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->get(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 316
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->getMetadata()Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;

    move-result-object p1

    goto :goto_d

    :cond_b
    sget-object p1, Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;->EMPTY:Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;

    :goto_d
    return-object p1
.end method

.method public getKeyForId(I)Ljava/lang/String;
    .registers 3

    .line 259
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->idToKey:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getOrAdd(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/CachedContent;
    .registers 3

    .line 232
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->keyToContent:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    if-nez v0, :cond_e

    .line 233
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->addNew(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method public initialize(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->storage:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;->initialize(J)V

    .line 189
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->previousStorage:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;

    if-eqz v0, :cond_c

    .line 190
    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;->initialize(J)V

    .line 192
    :cond_c
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->storage:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;->exists()Z

    move-result p1

    if-nez p1, :cond_2f

    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->previousStorage:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;

    if-eqz p1, :cond_2f

    invoke-interface {p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;->exists()Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 194
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->previousStorage:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;

    iget-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->keyToContent:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->idToKey:Landroid/util/SparseArray;

    invoke-interface {p1, p2, v0}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;->load(Ljava/util/HashMap;Landroid/util/SparseArray;)V

    .line 195
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->storage:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;

    iget-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->keyToContent:Ljava/util/HashMap;

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;->storeFully(Ljava/util/HashMap;)V

    goto :goto_38

    .line 198
    :cond_2f
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->storage:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;

    iget-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->keyToContent:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->idToKey:Landroid/util/SparseArray;

    invoke-interface {p1, p2, v0}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;->load(Ljava/util/HashMap;Landroid/util/SparseArray;)V

    .line 200
    :goto_38
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->previousStorage:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;

    if-eqz p1, :cond_42

    .line 201
    invoke-interface {p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;->delete()V

    const/4 p1, 0x0

    .line 202
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->previousStorage:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;

    :cond_42
    return-void
.end method

.method public maybeRemove(Ljava/lang/String;)V
    .registers 5

    .line 264
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->keyToContent:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    if-eqz v0, :cond_41

    .line 265
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->isLocked()Z

    move-result v1

    if-nez v1, :cond_41

    .line 266
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->keyToContent:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    iget p1, v0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->id:I

    .line 268
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->newIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    .line 269
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->storage:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;

    invoke-interface {v2, v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;->onRemove(Lcom/google/android/exoplayer2/upstream/cache/CachedContent;Z)V

    if-eqz v1, :cond_35

    .line 272
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->idToKey:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 273
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->newIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    goto :goto_41

    .line 277
    :cond_35
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->idToKey:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 278
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->removedIds:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_41
    :goto_41
    return-void
.end method

.method public removeEmpty()V
    .registers 5

    .line 285
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->keyToContent:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    .line 286
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->keyToContent:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v0, :cond_1c

    .line 287
    aget-object v3, v1, v2

    .line 288
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->maybeRemove(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_1c
    return-void
.end method

.method public store()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->storage:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->keyToContent:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;->storeIncremental(Ljava/util/HashMap;)V

    .line 217
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->removedIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_1e

    .line 219
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->idToKey:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->removedIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 221
    :cond_1e
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->removedIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 222
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->newIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    return-void
.end method