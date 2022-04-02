.class public Lcom/appsgeyser/multiTabApp/configuration/ObjectSerializer;
.super Ljava/lang/Object;
.source "ObjectSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private _context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/ObjectSerializer;->_context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public loadSerializedObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/ObjectSerializer;->_context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 31
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/ObjectSerializer;->_context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p1

    .line 32
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 34
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 29
    :cond_1c
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
.end method

.method public serializeAndSaveObject(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/ObjectSerializer;->_context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p2

    .line 21
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, p2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 22
    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 23
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method
