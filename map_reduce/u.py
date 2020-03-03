from mrjob.job import MRJob

#  outputting a count of the number of movies each user (identified via their user id) reviewed
class MRSalaries(MRJob):

    def mapper(self, _, line):
        (userId,movieId,rating,timestamp) = line.split(',')
        yield userId, 1

    def combiner(self, userId, counts):
        yield userId, sum(counts)

    def reducer(self, userId, counts):
        yield userId, sum(counts)


if __name__ == '__main__':
    MRSalaries.run()