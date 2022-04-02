.class public abstract Landroidx/versionedparcelable/VersionedParcel;
.super Ljava/lang/Object;
.source "VersionedParcel.java"


# instance fields
.field protected final mParcelizerCache:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field protected final mReadCache:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field protected final mWriteCache:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;)V"
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Landroidx/versionedparcelable/VersionedParcel;->mReadCache:Landroidx/collection/ArrayMap;

    .line 88
    iput-object p2, p0, Landroidx/versionedparcelable/VersionedParcel;->mWriteCache:Landroidx/collection/ArrayMap;

    .line 89
    iput-object p3, p0, Landroidx/versionedparcelable/VersionedParcel;->mParcelizerCache:Landroidx/collection/ArrayMap;

    return-void
.end method

.method private findParcelClass(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/versionedparcelable/VersionedParcelable;",
            ">;)",
            "Ljava/lang/Class;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1628
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcel;->mParcelizerCache:Landroidx/collection/ArrayMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_3a

    .line 1630
    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    .line 1631
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    const-string v0, "%s.%sParcelizer"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1632
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 1633
    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcel;->mParcelizerCache:Landroidx/collection/ArrayMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3a
    return-object v0
.end method

.method private getReadMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1604
    const-class v0, Landroidx/versionedparcelable/VersionedParcel;

    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcel;->mReadCache:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    if-nez v1, :cond_28

    .line 1606
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1607
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "read"

    .line 1608
    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1609
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcel;->mReadCache:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1, v1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28
    return-object v1
.end method

.method private getType(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)I"
        }
    .end annotation

    .line 995
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 p1, 0x4

    return p1

    .line 997
    :cond_6
    instance-of v0, p1, Landroid/os/Parcelable;

    if-eqz v0, :cond_c

    const/4 p1, 0x2

    return p1

    .line 999
    :cond_c
    instance-of v0, p1, Landroidx/versionedparcelable/VersionedParcelable;

    if-eqz v0, :cond_12

    const/4 p1, 0x1

    return p1

    .line 1001
    :cond_12
    instance-of v0, p1, Ljava/io/Serializable;

    if-eqz v0, :cond_18

    const/4 p1, 0x3

    return p1

    .line 1003
    :cond_18
    instance-of v0, p1, Landroid/os/IBinder;

    if-eqz v0, :cond_1e

    const/4 p1, 0x5

    return p1

    .line 1005
    :cond_1e
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_24

    const/4 p1, 0x7

    return p1

    .line 1007
    :cond_24
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_2b

    const/16 p1, 0x8

    return p1

    .line 1010
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cannot be VersionedParcelled"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getWriteMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1616
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcel;->mWriteCache:Landroidx/collection/ArrayMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    if-nez v0, :cond_2f

    .line 1618
    invoke-direct {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->findParcelClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 1619
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    .line 1620
    const-class v3, Landroidx/versionedparcelable/VersionedParcel;

    aput-object v3, v1, v2

    const-string v2, "write"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1621
    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcel;->mWriteCache:Landroidx/collection/ArrayMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    return-object v0
.end method

.method private readCollection(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S::",
            "Ljava/util/Collection<",
            "TT;>;>(TS;)TS;"
        }
    .end annotation

    .line 1344
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_8

    return-object v1

    :cond_8
    if-eqz v0, :cond_5d

    .line 1349
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v2

    if-gez v0, :cond_11

    return-object v1

    :cond_11
    const/4 v1, 0x1

    if-eq v2, v1, :cond_51

    const/4 v1, 0x2

    if-eq v2, v1, :cond_45

    const/4 v1, 0x3

    if-eq v2, v1, :cond_39

    const/4 v1, 0x4

    if-eq v2, v1, :cond_2d

    const/4 v1, 0x5

    if-eq v2, v1, :cond_21

    goto :goto_5d

    :cond_21
    :goto_21
    if-lez v0, :cond_5d

    .line 1380
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_21

    :cond_2d
    :goto_2d
    if-lez v0, :cond_5d

    .line 1356
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_2d

    :cond_39
    :goto_39
    if-lez v0, :cond_5d

    .line 1374
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_39

    :cond_45
    :goto_45
    if-lez v0, :cond_5d

    .line 1362
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readParcelable()Landroid/os/Parcelable;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_45

    :cond_51
    :goto_51
    if-lez v0, :cond_5d

    .line 1368
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readVersionedParcelable()Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_51

    :cond_5d
    :goto_5d
    return-object p1
.end method

.method private writeCollection(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    if-nez p1, :cond_7

    const/4 p1, -0x1

    .line 881
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    return-void

    .line 885
    :cond_7
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 886
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    if-lez v0, :cond_b8

    .line 888
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->getType(Ljava/lang/Object;)I

    move-result v0

    .line 889
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    packed-switch v0, :pswitch_data_ba

    :pswitch_22
    goto/16 :goto_b8

    .line 922
    :pswitch_24
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_28
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 923
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeFloat(F)V

    goto :goto_28

    .line 917
    :pswitch_3c
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_40
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 918
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    goto :goto_40

    .line 912
    :pswitch_54
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_58
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 913
    check-cast v0, Landroid/os/IBinder;

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_58

    .line 892
    :pswitch_68
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 893
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;)V

    goto :goto_6c

    .line 907
    :pswitch_7c
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_80
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 908
    check-cast v0, Ljava/io/Serializable;

    invoke-direct {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeSerializable(Ljava/io/Serializable;)V

    goto :goto_80

    .line 897
    :pswitch_90
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_94
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 898
    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeParcelable(Landroid/os/Parcelable;)V

    goto :goto_94

    .line 902
    :pswitch_a4
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 903
    check-cast v0, Landroidx/versionedparcelable/VersionedParcelable;

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;)V

    goto :goto_a8

    :cond_b8
    :goto_b8
    return-void

    nop

    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_a4
        :pswitch_90
        :pswitch_7c
        :pswitch_68
        :pswitch_54
        :pswitch_22
        :pswitch_3c
        :pswitch_24
    .end packed-switch
.end method

.method private writeCollection(Ljava/util/Collection;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;I)V"
        }
    .end annotation

    .line 875
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 876
    invoke-direct {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeCollection(Ljava/util/Collection;)V

    return-void
.end method

.method private writeSerializable(Ljava/io/Serializable;)V
    .registers 6

    if-nez p1, :cond_7

    const/4 p1, 0x0

    .line 1063
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;)V

    return-void

    .line 1066
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1067
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;)V

    .line 1069
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1071
    :try_start_17
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1072
    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1073
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 1075
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeByteArray([B)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_29} :catch_2a

    return-void

    :catch_2a
    move-exception p1

    .line 1077
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VersionedParcelable encountered IOException writing serializable object (name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private writeVersionedParcelableCreator(Landroidx/versionedparcelable/VersionedParcelable;)V
    .registers 5

    .line 1042
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->findParcelClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_8} :catch_10

    .line 1047
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;)V

    return-void

    :catch_10
    move-exception v0

    .line 1044
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not have a Parcelizer"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected abstract closeField()V
.end method

.method protected abstract createSubParcel()Landroidx/versionedparcelable/VersionedParcel;
.end method

.method public isStream()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract readBoolean()Z
.end method

.method public readBoolean(ZI)Z
    .registers 3

    .line 399
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result p2

    if-nez p2, :cond_7

    return p1

    .line 402
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readBoolean()Z

    move-result p1

    return p1
.end method

.method protected abstract readBundle()Landroid/os/Bundle;
.end method

.method public readBundle(Landroid/os/Bundle;I)Landroid/os/Bundle;
    .registers 3

    .line 493
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result p2

    if-nez p2, :cond_7

    return-object p1

    .line 496
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method protected abstract readByteArray()[B
.end method

.method public readByteArray([BI)[B
    .registers 3

    .line 472
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result p2

    if-nez p2, :cond_7

    return-object p1

    .line 475
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method protected abstract readCharSequence()Ljava/lang/CharSequence;
.end method

.method public readCharSequence(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .registers 3

    .line 616
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result p2

    if-nez p2, :cond_7

    return-object p1

    .line 619
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method protected abstract readField(I)Z
.end method

.method protected abstract readFloat()F
.end method

.method public readFloat(FI)F
    .registers 3

    .line 430
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result p2

    if-nez p2, :cond_7

    return p1

    .line 433
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readFloat()F

    move-result p1

    return p1
.end method

.method protected readFromParcel(Ljava/lang/String;Landroidx/versionedparcelable/VersionedParcel;)Landroidx/versionedparcelable/VersionedParcelable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/VersionedParcelable;",
            ">(",
            "Ljava/lang/String;",
            "Landroidx/versionedparcelable/VersionedParcel;",
            ")TT;"
        }
    .end annotation

    .line 1565
    :try_start_0
    invoke-direct {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->getReadMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 1566
    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/versionedparcelable/VersionedParcelable;
    :try_end_11
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_11} :catch_3c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_11} :catch_24
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_11} :catch_1b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_11} :catch_12

    return-object p1

    :catch_12
    move-exception p1

    .line 1577
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "VersionedParcel encountered ClassNotFoundException"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1b
    move-exception p1

    .line 1575
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "VersionedParcel encountered NoSuchMethodException"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_24
    move-exception p1

    .line 1570
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/lang/RuntimeException;

    if-eqz p2, :cond_34

    .line 1571
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    .line 1573
    :cond_34
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "VersionedParcel encountered InvocationTargetException"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_3c
    move-exception p1

    .line 1568
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "VersionedParcel encountered IllegalAccessException"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected abstract readInt()I
.end method

.method public readInt(II)I
    .registers 3

    .line 409
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result p2

    if-nez p2, :cond_7

    return p1

    .line 412
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result p1

    return p1
.end method

.method public readList(Ljava/util/List;I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;I)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1337
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result p2

    if-nez p2, :cond_7

    return-object p1

    .line 1340
    :cond_7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->readCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method protected abstract readLong()J
.end method

.method public readLong(JI)J
    .registers 4

    .line 419
    invoke-virtual {p0, p3}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result p3

    if-nez p3, :cond_7

    return-wide p1

    .line 422
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readLong()J

    move-result-wide p1

    return-wide p1
.end method

.method protected abstract readParcelable()Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">()TT;"
        }
    .end annotation
.end method

.method public readParcelable(Landroid/os/Parcelable;I)Landroid/os/Parcelable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(TT;I)TT;"
        }
    .end annotation

    .line 481
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result p2

    if-nez p2, :cond_7

    return-object p1

    .line 484
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readParcelable()Landroid/os/Parcelable;

    move-result-object p1

    return-object p1
.end method

.method protected readSerializable()Ljava/io/Serializable;
    .registers 7

    const-string v0, ")"

    .line 1523
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 1532
    :cond_a
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readByteArray()[B

    move-result-object v2

    .line 1533
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1535
    :try_start_13
    new-instance v2, Landroidx/versionedparcelable/VersionedParcel$1;

    invoke-direct {v2, p0, v3}, Landroidx/versionedparcelable/VersionedParcel$1;-><init>(Landroidx/versionedparcelable/VersionedParcel;Ljava/io/InputStream;)V

    .line 1547
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/Serializable;
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1e} :catch_3a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_13 .. :try_end_1e} :catch_1f

    return-object v2

    :catch_1f
    move-exception v2

    .line 1553
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VersionedParcelable encountered ClassNotFoundException reading a Serializable object (name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_3a
    move-exception v2

    .line 1549
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VersionedParcelable encountered IOException reading a Serializable object (name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public readSet(Ljava/util/Set;I)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;I)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 1318
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result p2

    if-nez p2, :cond_7

    return-object p1

    .line 1321
    :cond_7
    new-instance p1, Landroidx/collection/ArraySet;

    invoke-direct {p1}, Landroidx/collection/ArraySet;-><init>()V

    invoke-direct {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->readCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    return-object p1
.end method

.method protected abstract readString()Ljava/lang/String;
.end method

.method public readString(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    .line 451
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result p2

    if-nez p2, :cond_7

    return-object p1

    .line 454
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected abstract readStrongBinder()Landroid/os/IBinder;
.end method

.method public readStrongBinder(Landroid/os/IBinder;I)Landroid/os/IBinder;
    .registers 3

    .line 461
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result p2

    if-nez p2, :cond_7

    return-object p1

    .line 464
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method protected readVersionedParcelable()Landroidx/versionedparcelable/VersionedParcelable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/VersionedParcelable;",
            ">()TT;"
        }
    .end annotation

    .line 1509
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 1513
    :cond_8
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->createSubParcel()Landroidx/versionedparcelable/VersionedParcel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->readFromParcel(Ljava/lang/String;Landroidx/versionedparcelable/VersionedParcel;)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v0

    return-object v0
.end method

.method public readVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;I)Landroidx/versionedparcelable/VersionedParcelable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/VersionedParcelable;",
            ">(TT;I)TT;"
        }
    .end annotation

    .line 1493
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result p2

    if-nez p2, :cond_7

    return-object p1

    .line 1496
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readVersionedParcelable()Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object p1

    return-object p1
.end method

.method protected abstract setOutputField(I)V
.end method

.method public setSerializationFlags(ZZ)V
    .registers 3

    return-void
.end method

.method protected abstract writeBoolean(Z)V
.end method

.method public writeBoolean(ZI)V
    .registers 3

    .line 294
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 295
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeBoolean(Z)V

    return-void
.end method

.method protected abstract writeBundle(Landroid/os/Bundle;)V
.end method

.method public writeBundle(Landroid/os/Bundle;I)V
    .registers 3

    .line 285
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 286
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method protected abstract writeByteArray([B)V
.end method

.method public writeByteArray([BI)V
    .registers 3

    .line 304
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 305
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeByteArray([B)V

    return-void
.end method

.method protected abstract writeCharSequence(Ljava/lang/CharSequence;)V
.end method

.method public writeCharSequence(Ljava/lang/CharSequence;I)V
    .registers 3

    .line 325
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 326
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected abstract writeFloat(F)V
.end method

.method public writeFloat(FI)V
    .registers 3

    .line 352
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 353
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeFloat(F)V

    return-void
.end method

.method protected abstract writeInt(I)V
.end method

.method public writeInt(II)V
    .registers 3

    .line 334
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 335
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    return-void
.end method

.method public writeList(Ljava/util/List;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;I)V"
        }
    .end annotation

    .line 840
    invoke-direct {p0, p1, p2}, Landroidx/versionedparcelable/VersionedParcel;->writeCollection(Ljava/util/Collection;I)V

    return-void
.end method

.method protected abstract writeLong(J)V
.end method

.method public writeLong(JI)V
    .registers 4

    .line 343
    invoke-virtual {p0, p3}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 344
    invoke-virtual {p0, p1, p2}, Landroidx/versionedparcelable/VersionedParcel;->writeLong(J)V

    return-void
.end method

.method protected abstract writeParcelable(Landroid/os/Parcelable;)V
.end method

.method public writeParcelable(Landroid/os/Parcelable;I)V
    .registers 3

    .line 391
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 392
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeParcelable(Landroid/os/Parcelable;)V

    return-void
.end method

.method public writeSet(Ljava/util/Set;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;I)V"
        }
    .end annotation

    .line 826
    invoke-direct {p0, p1, p2}, Landroidx/versionedparcelable/VersionedParcel;->writeCollection(Ljava/util/Collection;I)V

    return-void
.end method

.method protected abstract writeString(Ljava/lang/String;)V
.end method

.method public writeString(Ljava/lang/String;I)V
    .registers 3

    .line 370
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 371
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method protected abstract writeStrongBinder(Landroid/os/IBinder;)V
.end method

.method public writeStrongBinder(Landroid/os/IBinder;I)V
    .registers 3

    .line 379
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 380
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method

.method protected writeToParcel(Landroidx/versionedparcelable/VersionedParcelable;Landroidx/versionedparcelable/VersionedParcel;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/VersionedParcelable;",
            ">(TT;",
            "Landroidx/versionedparcelable/VersionedParcel;",
            ")V"
        }
    .end annotation

    .line 1586
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->getWriteMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    .line 1587
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_15} :catch_40
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_15} :catch_28
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_15} :catch_1f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception p1

    .line 1598
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "VersionedParcel encountered ClassNotFoundException"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1f
    move-exception p1

    .line 1596
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "VersionedParcel encountered NoSuchMethodException"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_28
    move-exception p1

    .line 1591
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/lang/RuntimeException;

    if-eqz p2, :cond_38

    .line 1592
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    .line 1594
    :cond_38
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "VersionedParcel encountered InvocationTargetException"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_40
    move-exception p1

    .line 1589
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "VersionedParcel encountered IllegalAccessException"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;)V
    .registers 3

    if-nez p1, :cond_7

    const/4 p1, 0x0

    .line 1029
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;)V

    return-void

    .line 1032
    :cond_7
    invoke-direct {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeVersionedParcelableCreator(Landroidx/versionedparcelable/VersionedParcelable;)V

    .line 1034
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->createSubParcel()Landroidx/versionedparcelable/VersionedParcel;

    move-result-object v0

    .line 1035
    invoke-virtual {p0, p1, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeToParcel(Landroidx/versionedparcelable/VersionedParcelable;Landroidx/versionedparcelable/VersionedParcel;)V

    .line 1036
    invoke-virtual {v0}, Landroidx/versionedparcelable/VersionedParcel;->closeField()V

    return-void
.end method

.method public writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;I)V
    .registers 3

    .line 1021
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 1022
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;)V

    return-void
.end method
