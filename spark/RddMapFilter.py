#!/usr/bin/env python
# coding: utf-8

# In[1]:


import pyspark
sc = pyspark.SparkContext('local[*]')

txt = sc.textFile('file:////usr/share/doc/python/copyright')
print(txt.count())

python_lines = txt.filter(lambda line: 'python' in line.lower())
print(python_lines.count())


# In[5]:


ex1RDD = sc.textFile('/home/jovyan/foodratings125567.csv')
ex1RDD.take(5)


# In[6]:


ex2RDD = ex1RDD.map(lambda line: line.split(","))
ex2RDD.take(5)


# In[7]:


ex3RDD = ex2RDD.map(lambda line: [line[0],line[1],int(line[2]),line[3],line[4],line[5]])
ex3RDD.take(5)


# In[9]:


ex4RDD = ex3RDD.filter(lambda line: line[2] < 25)
ex4RDD.take(5)


# In[11]:


ex5RDD = ex4RDD.map(lambda x: (x[0], tuple(x)))
ex5RDD.take(5)


# In[12]:


ex6RDD = ex5RDD.sortByKey()
ex6RDD.take(5)


# In[ ]:




