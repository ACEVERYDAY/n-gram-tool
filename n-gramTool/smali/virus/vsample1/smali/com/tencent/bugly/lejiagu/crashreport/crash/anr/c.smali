.class public Lcom/tencent/bugly/lejiagu/crashreport/crash/anr/c;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/lejiagu/crashreport/crash/anr/c$a;,
        Lcom/tencent/bugly/lejiagu/crashreport/crash/anr/c$b;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/tencent/bugly/lejiagu/crashreport/crash/anr/c$a;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 71
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move-object v0, v1

    .line 130
    :cond_1
    :goto_0
    return-object v0

    .line 73
    :cond_2
    new-instance v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/anr/c$a;

    invoke-direct {v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/anr/c$a;-><init>()V

    .line 74
    new-instance v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/anr/c$1;

    invoke-direct {v2, v0, p2}, Lcom/tencent/bugly/lejiagu/crashreport/crash/anr/c$1;-><init>(Lcom/tencent/bugly/lejiagu/crashreport/crash/anr/c$a;Z)V

    invoke-static {p1, v2}, Lcom/tencent/bugly/lejiagu/crashreport/crash/anr/c;->a(Ljava/lang/String;Lcom/tencent/bugly/lejiagu/crashreport/crash/anr/c$b;)V

    .line 127
    iget-wide v2, v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/anr/c$a;->a:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    iget-wide v2, v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/anr/c$a;->c:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    iget-object v2, v0, Lcom/tencent/bugly/lejiagu/crashreport/crash/anr/c$a;->b:Ljava/lang/String;

    if-nez v2, :cond_1

    :cond_3
    move-object v0, v1

    .line 130
    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Z)Lcom/tencent/bugly/lejiagu/crashreport/crash/anr/c$a;
    .locals 8

    .prologue
    const-wide/16 v5, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 141
    if-nez p0, :cond_0

    .line 142
    const-string v1, "path:%s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v7

    invoke-static {v1, v2}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 190
    :goto_0
    return-object v0

    .line 145
    :cond_0
    new-instance v1, Lcom/tencent/bugly/lejiagu/crashreport/crash/anr/c$a;

    invoke-direct {v1}, Lcom/tencent/bugly/lejiagu/crashreport/crash/anr/c$a;-><init>()V

    .line 146
    new-instance v2, Lcom/tencent/bugly/lejiagu/crashreport/crash/anr/c$2;

    invoke-direct {v2, v1, p1}, Lcom/tencent/bugly/lejiagu/crashreport/crash/anr/c$2;-><init>(Lcom/tencent/bugly/lejiagu/crashreport/crash/anr/c$a;Z)V

    invoke-static {p0, v2}, Lcom/tencent/bugly/lejiagu/crashreport/crash/anr/c;->a(Ljava/lang/String;Lcom/tencent/bugly/lejiagu/crashreport/crash/anr/c$b;)V

    .line 185
    iget-wide v2, v1, Lcom/tencent/bugly/lejiagu/crashreport/crash/anr/c$a;->a:J

    cmp-long v2, v2, v5

    if-lez v2, :cond_1

    iget-wide v2, v1, Lcom/tencent/bugly/lejiagu/crashreport/crash/anr/c$a;->c:J

    cmp-long v2, v2, v5

    if-lez v2, :cond_1

    iget-object v2, v1, Lcom/tencent/bugly/lejiagu/crashreport/crash/anr/c$a;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 186
    goto :goto_0

    .line 188
    :cond_1
    const-string v2, "first dump error %s"

    new-array v3, v4, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, v1, Lcom/tencent/bugly/lejiagu/crashreport/crash/anr/c$a;->a:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v1, Lcom/tencent/bugly/lejiagu/crashreport/crash/anr/c$a;->c:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, v1, Lcom/tencent/bugly/lejiagu/crashreport/crash/anr/c$a;->b:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v7

    invoke-static {v2, v3}, Lcom/tencent/bugly/lejiagu/proguard/z;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected static a(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 322
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 324
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    .line 325
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 326
    if-nez v2, :cond_0

    .line 327
    const/4 v0, 0x0

    .line 331
    :goto_1
    return-object v0

    .line 328
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 324
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 331
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Lcom/tencent/bugly/lejiagu/crashreport/crash/anr/c$b;)V
    .locals 12

    .prologue
    .line 198
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v4

    move-object v0, p1

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/tencent/bugly/lejiagu/crashreport/crash/anr/c$b;->a(Ljava/lang/String;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    const/4 v1, 0x0

    .line 211
    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :try_start_1
    const-string v0, "-{5}\\spid\\s\\d+\\sat\\s\\d+-\\d+-\\d+\\s\\d{2}:\\d{2}:\\d{2}\\s-{5}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 215
    const-string v0, "-{5}\\send\\s\\d+\\s-{5}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 216
    const-string v0, "Cmd\\sline:\\s(\\S+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    .line 217
    const-string v0, "\".+\"\\s(daemon\\s){0,1}prio=\\d+\\stid=\\d+\\s.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    .line 218
    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v11, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 219
    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    aput-object v7, v0, v1

    invoke-static {v6, v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/anr/c;->a(Ljava/io/BufferedReader;[Ljava/util/regex/Pattern;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 221
    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 222
    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x4

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x5

    aget-object v0, v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-virtual {v11, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 227
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/regex/Pattern;

    const/4 v5, 0x0

    aput-object v9, v0, v5

    invoke-static {v6, v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/anr/c;->a(Ljava/io/BufferedReader;[Ljava/util/regex/Pattern;)[Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    if-nez v0, :cond_3

    .line 283
    if-eqz v6, :cond_0

    .line 285
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 286
    :catch_0
    move-exception v0

    .line 287
    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 288
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 231
    :cond_3
    const/4 v5, 0x1

    :try_start_3
    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 233
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 234
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    .line 237
    invoke-interface/range {v0 .. v5}, Lcom/tencent/bugly/lejiagu/crashreport/crash/anr/c$b;->a(JJLjava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    if-nez v0, :cond_4

    .line 283
    if-eqz v6, :cond_0

    .line 285
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 286
    :catch_1
    move-exception v0

    .line 287
    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 288
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 241
    :cond_4
    const/4 v0, 0x2

    :try_start_5
    new-array v0, v0, [Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    aput-object v10, v0, v1

    const/4 v1, 0x1

    aput-object v8, v0, v1

    invoke-static {v6, v0}, Lcom/tencent/bugly/lejiagu/crashreport/crash/anr/c;->a(Ljava/io/BufferedReader;[Ljava/util/regex/Pattern;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 242
    const/4 v1, 0x0

    aget-object v1, v0, v1

    if-ne v1, v10, :cond_5

    .line 244
    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    const-string v1, "\".+\""

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 247
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 248
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    .line 249
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 250
    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 252
    const-string v2, "NATIVE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 254
    const-string v2, "tid=\\d+"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 255
    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 257
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 258
    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 259
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 261
    invoke-static {v6}, Lcom/tencent/bugly/lejiagu/crashreport/crash/anr/c;->a(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v3

    .line 262
    invoke-static {v6}, Lcom/tencent/bugly/lejiagu/crashreport/crash/anr/c;->b(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p1

    .line 264
    invoke-interface/range {v0 .. v5}, Lcom/tencent/bugly/lejiagu/crashreport/crash/anr/c$b;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v0

    if-nez v0, :cond_4

    .line 283
    if-eqz v6, :cond_0

    .line 285
    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 286
    :catch_2
    move-exception v0

    .line 287
    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 288
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 269
    :cond_5
    const/4 v1, 0x1

    :try_start_7
    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 270
    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 271
    invoke-interface {p1, v0, v1}, Lcom/tencent/bugly/lejiagu/crashreport/crash/anr/c$b;->a(J)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v0

    if-nez v0, :cond_2

    .line 283
    if-eqz v6, :cond_0

    .line 285
    :try_start_8
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_0

    .line 286
    :catch_3
    move-exception v0

    .line 287
    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 288
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 283
    :cond_6
    if-eqz v6, :cond_0

    .line 285
    :try_start_9
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_0

    .line 286
    :catch_4
    move-exception v0

    .line 287
    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 288
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 278
    :catch_5
    move-exception v0

    .line 281
    :goto_1
    :try_start_a
    const-string v2, "trace open fail:%s : %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/bugly/lejiagu/proguard/z;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 283
    if-eqz v1, :cond_0

    .line 285
    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    goto/16 :goto_0

    .line 286
    :catch_6
    move-exception v0

    .line 287
    invoke-static {v0}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 288
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 283
    :catchall_0
    move-exception v0

    move-object v6, v1

    :goto_2
    if-eqz v6, :cond_7

    .line 285
    :try_start_c
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 289
    :cond_7
    :goto_3
    throw v0

    .line 286
    :catch_7
    move-exception v1

    .line 287
    invoke-static {v1}, Lcom/tencent/bugly/lejiagu/proguard/z;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 288
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 283
    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v6, v1

    goto :goto_2

    .line 278
    :catch_8
    move-exception v0

    move-object v1, v6

    goto :goto_1
.end method

.method protected static varargs a(Ljava/io/BufferedReader;[Ljava/util/regex/Pattern;)[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 303
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-object v0

    .line 306
    :cond_1
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 307
    array-length v4, p1

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_1

    aget-object v5, p1, v1

    .line 308
    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 309
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 310
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v5, v0, v2

    const/4 v1, 0x1

    aput-object v3, v0, v1

    goto :goto_0

    .line 307
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected static b(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 340
    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 341
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 347
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 344
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
