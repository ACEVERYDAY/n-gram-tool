.class final Lcom/ipaynow/plugin/utils/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ipaynow/plugin/utils/g;
.implements Ljava/lang/Runnable;


# instance fields
.field private aZ:Ljava/net/Socket;

.field private ba:Z

.field private bb:Z

.field private final bc:[Ljava/lang/Object;

.field final synthetic bd:Lcom/ipaynow/plugin/utils/c;


# direct methods
.method public constructor <init>(Lcom/ipaynow/plugin/utils/c;Ljava/net/Socket;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/ipaynow/plugin/utils/f;->bd:Lcom/ipaynow/plugin/utils/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/ipaynow/plugin/utils/f;->bc:[Ljava/lang/Object;

    iput-object p2, p0, Lcom/ipaynow/plugin/utils/f;->aZ:Ljava/net/Socket;

    iput-boolean v1, p0, Lcom/ipaynow/plugin/utils/f;->ba:Z

    iput-boolean v1, p0, Lcom/ipaynow/plugin/utils/f;->bb:Z

    return-void
.end method

.method private a(Ljava/net/Socket;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/ipaynow/plugin/utils/f;->bd:Lcom/ipaynow/plugin/utils/c;

    invoke-static {v3}, Lcom/ipaynow/plugin/utils/c;->a(Lcom/ipaynow/plugin/utils/c;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v4, 0x2000

    invoke-direct {v3, v5, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/ipaynow/plugin/utils/f;->bd:Lcom/ipaynow/plugin/utils/c;

    invoke-static {v0}, Lcom/ipaynow/plugin/utils/c;->c(Lcom/ipaynow/plugin/utils/c;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DONE.\n"

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lcom/ipaynow/plugin/utils/f;->bd:Lcom/ipaynow/plugin/utils/c;

    invoke-static {v0}, Lcom/ipaynow/plugin/utils/c;->a(Lcom/ipaynow/plugin/utils/c;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move v0, v1

    :goto_1
    return v0

    :cond_0
    :try_start_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const/16 v5, 0x20

    invoke-virtual {v3, v5}, Ljava/io/BufferedWriter;->write(I)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const/16 v0, 0xa

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v3

    :goto_2
    iget-object v1, p0, Lcom/ipaynow/plugin/utils/f;->bd:Lcom/ipaynow/plugin/utils/c;

    invoke-static {v1}, Lcom/ipaynow/plugin/utils/c;->a(Lcom/ipaynow/plugin/utils/c;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move v0, v2

    goto :goto_1

    :catch_1
    move-exception v0

    move v0, v2

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    :goto_3
    iget-object v1, p0, Lcom/ipaynow/plugin/utils/f;->bd:Lcom/ipaynow/plugin/utils/c;

    invoke-static {v1}, Lcom/ipaynow/plugin/utils/c;->a(Lcom/ipaynow/plugin/utils/c;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    if-eqz v3, :cond_1

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_1
    :goto_4
    throw v0

    :catch_2
    move-exception v0

    move v0, v2

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method private a(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x20

    :try_start_0
    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p3, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p3, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    :goto_0
    invoke-direct {p0, v4}, Lcom/ipaynow/plugin/utils/f;->c(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_2

    :goto_1
    return v1

    :cond_1
    const-string p3, ""

    goto :goto_0

    :cond_2
    const-class v4, Landroid/view/ViewDebug;

    const-string v5, "dispatchCommand"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/view/View;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-class v8, Ljava/io/OutputStream;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v5, 0x0

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v3, 0x1

    aput-object p2, v6, v3

    const/4 v3, 0x2

    aput-object p3, v6, v3

    const/4 v3, 0x3

    new-instance v7, Lcom/ipaynow/plugin/utils/e;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/ipaynow/plugin/utils/e;-><init>(Ljava/io/OutputStream;)V

    aput-object v7, v6, v3

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v3

    if-nez v3, :cond_6

    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "DONE\n"

    invoke-virtual {v3, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    if-eqz v3, :cond_3

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    :goto_3
    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_4
    :try_start_3
    const-string v3, "ViewServer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Could not send command "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with parameters "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_5

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move v0, v1

    goto :goto_3

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_3

    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v2, :cond_4

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_4
    :goto_6
    throw v0

    :catch_2
    move-exception v0

    move v0, v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v2, v3

    goto :goto_5

    :catch_4
    move-exception v0

    move-object v2, v3

    goto :goto_4

    :cond_5
    move v0, v1

    goto :goto_3

    :cond_6
    move-object v3, v2

    goto :goto_2
.end method

.method private b(Ljava/net/Socket;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v4, 0x2000

    invoke-direct {v3, v5, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-object v0, p0, Lcom/ipaynow/plugin/utils/f;->bd:Lcom/ipaynow/plugin/utils/c;

    invoke-static {v0}, Lcom/ipaynow/plugin/utils/c;->d(Lcom/ipaynow/plugin/utils/c;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v0, p0, Lcom/ipaynow/plugin/utils/f;->bd:Lcom/ipaynow/plugin/utils/c;

    invoke-static {v0}, Lcom/ipaynow/plugin/utils/c;->b(Lcom/ipaynow/plugin/utils/c;)Landroid/view/View;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    :try_start_3
    iget-object v0, p0, Lcom/ipaynow/plugin/utils/f;->bd:Lcom/ipaynow/plugin/utils/c;

    invoke-static {v0}, Lcom/ipaynow/plugin/utils/c;->d(Lcom/ipaynow/plugin/utils/c;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/utils/f;->bd:Lcom/ipaynow/plugin/utils/c;

    invoke-static {v0}, Lcom/ipaynow/plugin/utils/c;->a(Lcom/ipaynow/plugin/utils/c;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v0, p0, Lcom/ipaynow/plugin/utils/f;->bd:Lcom/ipaynow/plugin/utils/c;

    invoke-static {v0}, Lcom/ipaynow/plugin/utils/c;->c(Lcom/ipaynow/plugin/utils/c;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v5, p0, Lcom/ipaynow/plugin/utils/f;->bd:Lcom/ipaynow/plugin/utils/c;

    invoke-static {v5}, Lcom/ipaynow/plugin/utils/c;->b(Lcom/ipaynow/plugin/utils/c;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v5, p0, Lcom/ipaynow/plugin/utils/f;->bd:Lcom/ipaynow/plugin/utils/c;

    invoke-static {v5}, Lcom/ipaynow/plugin/utils/c;->a(Lcom/ipaynow/plugin/utils/c;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(I)V

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    :cond_0
    const/16 v0, 0xa

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(I)V

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    move v0, v1

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    :try_start_7
    iget-object v1, p0, Lcom/ipaynow/plugin/utils/f;->bd:Lcom/ipaynow/plugin/utils/c;

    invoke-static {v1}, Lcom/ipaynow/plugin/utils/c;->d(Lcom/ipaynow/plugin/utils/c;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catch_0
    move-exception v0

    move-object v0, v3

    :goto_1
    if-eqz v0, :cond_2

    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    move v0, v2

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_9
    iget-object v1, p0, Lcom/ipaynow/plugin/utils/f;->bd:Lcom/ipaynow/plugin/utils/c;

    invoke-static {v1}, Lcom/ipaynow/plugin/utils/c;->a(Lcom/ipaynow/plugin/utils/c;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v0

    :goto_2
    if-eqz v3, :cond_1

    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    :cond_1
    :goto_3
    throw v0

    :catch_1
    move-exception v0

    move v0, v2

    goto :goto_0

    :catch_2
    move-exception v0

    move v0, v2

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_3

    :catchall_3
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private c(I)Landroid/view/View;
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/utils/f;->bd:Lcom/ipaynow/plugin/utils/c;

    invoke-static {v0}, Lcom/ipaynow/plugin/utils/c;->a(Lcom/ipaynow/plugin/utils/c;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/ipaynow/plugin/utils/f;->bd:Lcom/ipaynow/plugin/utils/c;

    invoke-static {v0}, Lcom/ipaynow/plugin/utils/c;->b(Lcom/ipaynow/plugin/utils/c;)Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lcom/ipaynow/plugin/utils/f;->bd:Lcom/ipaynow/plugin/utils/c;

    invoke-static {v1}, Lcom/ipaynow/plugin/utils/c;->a(Lcom/ipaynow/plugin/utils/c;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/ipaynow/plugin/utils/f;->bd:Lcom/ipaynow/plugin/utils/c;

    invoke-static {v1}, Lcom/ipaynow/plugin/utils/c;->a(Lcom/ipaynow/plugin/utils/c;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/ipaynow/plugin/utils/f;->bd:Lcom/ipaynow/plugin/utils/c;

    invoke-static {v0}, Lcom/ipaynow/plugin/utils/c;->a(Lcom/ipaynow/plugin/utils/c;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_1
    iget-object v0, p0, Lcom/ipaynow/plugin/utils/f;->bd:Lcom/ipaynow/plugin/utils/c;

    invoke-static {v0}, Lcom/ipaynow/plugin/utils/c;->c(Lcom/ipaynow/plugin/utils/c;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ipaynow/plugin/utils/f;->bd:Lcom/ipaynow/plugin/utils/c;

    invoke-static {v0}, Lcom/ipaynow/plugin/utils/c;->a(Lcom/ipaynow/plugin/utils/c;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    if-ne v2, p1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v1, p0, Lcom/ipaynow/plugin/utils/f;->bd:Lcom/ipaynow/plugin/utils/c;

    invoke-static {v1}, Lcom/ipaynow/plugin/utils/c;->a(Lcom/ipaynow/plugin/utils/c;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/ipaynow/plugin/utils/f;->bd:Lcom/ipaynow/plugin/utils/c;

    invoke-static {v1}, Lcom/ipaynow/plugin/utils/c;->a(Lcom/ipaynow/plugin/utils/c;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method private k()Z
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/ipaynow/plugin/utils/f;->bd:Lcom/ipaynow/plugin/utils/c;

    invoke-static {v0, p0}, Lcom/ipaynow/plugin/utils/c;->a(Lcom/ipaynow/plugin/utils/c;Lcom/ipaynow/plugin/utils/g;)V

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v5, p0, Lcom/ipaynow/plugin/utils/f;->aZ:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :cond_0
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :goto_1
    iget-object v0, p0, Lcom/ipaynow/plugin/utils/f;->bd:Lcom/ipaynow/plugin/utils/c;

    invoke-static {v0, p0}, Lcom/ipaynow/plugin/utils/c;->b(Lcom/ipaynow/plugin/utils/c;Lcom/ipaynow/plugin/utils/g;)V

    :goto_2
    return v3

    :cond_1
    :try_start_3
    iget-object v5, p0, Lcom/ipaynow/plugin/utils/f;->bc:[Ljava/lang/Object;

    monitor-enter v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    :try_start_4
    iget-boolean v0, p0, Lcom/ipaynow/plugin/utils/f;->ba:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/ipaynow/plugin/utils/f;->bb:Z

    if-eqz v0, :cond_5

    :cond_2
    iget-boolean v0, p0, Lcom/ipaynow/plugin/utils/f;->ba:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ipaynow/plugin/utils/f;->ba:Z

    move v2, v3

    :goto_4
    iget-boolean v0, p0, Lcom/ipaynow/plugin/utils/f;->bb:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ipaynow/plugin/utils/f;->bb:Z

    move v0, v3

    :goto_5
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_3

    :try_start_5
    const-string v2, "LIST UPDATE\n"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    :cond_3
    if-eqz v0, :cond_0

    const-string v0, "FOCUS UPDATE\n"

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_6
    :try_start_6
    const-string v2, "ViewServer"

    const-string v4, "Connection error: "

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v1, :cond_4

    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_4
    :goto_7
    iget-object v0, p0, Lcom/ipaynow/plugin/utils/f;->bd:Lcom/ipaynow/plugin/utils/c;

    invoke-static {v0, p0}, Lcom/ipaynow/plugin/utils/c;->b(Lcom/ipaynow/plugin/utils/c;Lcom/ipaynow/plugin/utils/g;)V

    goto :goto_2

    :cond_5
    :try_start_8
    iget-object v0, p0, Lcom/ipaynow/plugin/utils/f;->bc:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_9
    monitor-exit v5

    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v0

    :goto_8
    if-eqz v1, :cond_6

    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    :cond_6
    :goto_9
    iget-object v1, p0, Lcom/ipaynow/plugin/utils/f;->bd:Lcom/ipaynow/plugin/utils/c;

    invoke-static {v1, p0}, Lcom/ipaynow/plugin/utils/c;->b(Lcom/ipaynow/plugin/utils/c;Lcom/ipaynow/plugin/utils/g;)V

    throw v0

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_9

    :catch_3
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_8

    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_6

    :cond_7
    move v0, v4

    goto :goto_5

    :cond_8
    move v2, v4

    goto :goto_4
.end method


# virtual methods
.method public final j()V
    .locals 2

    iget-object v1, p0, Lcom/ipaynow/plugin/utils/f;->bc:[Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/ipaynow/plugin/utils/f;->ba:Z

    iget-object v0, p0, Lcom/ipaynow/plugin/utils/f;->bc:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final run()V
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/ipaynow/plugin/utils/f;->aZ:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x400

    invoke-direct {v1, v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v2, -0x1

    if-ne v3, v2, :cond_2

    const-string v2, ""

    move-object v5, v0

    move-object v0, v2

    move-object v2, v5

    :goto_0
    const-string v3, "PROTOCOL"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/ipaynow/plugin/utils/f;->aZ:Ljava/net/Socket;

    const-string v3, "4"

    invoke-static {v0, v3}, Lcom/ipaynow/plugin/utils/c;->b(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result v0

    :goto_1
    if-nez v0, :cond_0

    const-string v0, "ViewServer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "An error occurred with the command: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :goto_2
    iget-object v0, p0, Lcom/ipaynow/plugin/utils/f;->aZ:Ljava/net/Socket;

    if-eqz v0, :cond_1

    :try_start_3
    iget-object v0, p0, Lcom/ipaynow/plugin/utils/f;->aZ:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    :cond_1
    :goto_3
    return-void

    :cond_2
    const/4 v2, 0x0

    :try_start_4
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v3, "SERVER"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v0, p0, Lcom/ipaynow/plugin/utils/f;->aZ:Ljava/net/Socket;

    const-string v3, "4"

    invoke-static {v0, v3}, Lcom/ipaynow/plugin/utils/c;->b(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :cond_4
    const-string v3, "LIST"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v0, p0, Lcom/ipaynow/plugin/utils/f;->aZ:Ljava/net/Socket;

    invoke-direct {p0, v0}, Lcom/ipaynow/plugin/utils/f;->a(Ljava/net/Socket;)Z

    move-result v0

    goto :goto_1

    :cond_5
    const-string v3, "GET_FOCUS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v0, p0, Lcom/ipaynow/plugin/utils/f;->aZ:Ljava/net/Socket;

    invoke-direct {p0, v0}, Lcom/ipaynow/plugin/utils/f;->b(Ljava/net/Socket;)Z

    move-result v0

    goto :goto_1

    :cond_6
    const-string v3, "AUTOLIST"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-direct {p0}, Lcom/ipaynow/plugin/utils/f;->k()Z

    move-result v0

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lcom/ipaynow/plugin/utils/f;->aZ:Ljava/net/Socket;

    invoke-direct {p0, v3, v2, v0}, Lcom/ipaynow/plugin/utils/f;->a(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_4
    :try_start_5
    const-string v2, "ViewServer"

    const-string v3, "Connection error: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_8

    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_8
    :goto_5
    iget-object v0, p0, Lcom/ipaynow/plugin/utils/f;->aZ:Ljava/net/Socket;

    if-eqz v0, :cond_1

    :try_start_7
    iget-object v0, p0, Lcom/ipaynow/plugin/utils/f;->aZ:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_6
    if-eqz v1, :cond_9

    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :cond_9
    :goto_7
    iget-object v1, p0, Lcom/ipaynow/plugin/utils/f;->aZ:Ljava/net/Socket;

    if-eqz v1, :cond_a

    :try_start_9
    iget-object v1, p0, Lcom/ipaynow/plugin/utils/f;->aZ:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    :cond_a
    :goto_8
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_7
    move-exception v0

    goto :goto_4
.end method
